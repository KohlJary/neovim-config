" OS detection
function! DetectEnv() abort
  if has('win64') || has('win32') || has('win16')
    return 'WINDOWS'
  else
    return toupper(substitute(system('uname'), '\n', '', ''))
  endif
endfunction
let g:detected_os = DetectEnv()

" Runtime path setup
set runtimepath=$VIMRUNTIME
if (g:detected_os == 'WINDOWS')
  let $VIMDIR = $HOME.'/AppData/Local/nvim'
  let $TEMPDIR = $HOME.'/AppData/Local/Temp/nvim'
  let $DATADIR = $HOME.'/AppData/Local/nvim-data/site'
  let $OMNIBIN = $HOME.'/AppData/Local/omnisharp-vim/omnisharp-roslyn/OmniSharp.exe'
  let $NPMDIR = $HOME.'/AppData/Roaming/npm/node_modules'
  let $CHOCDIR = 'C:/ProgramData/chocolatey/bin'
  set runtimepath^=$CHOCDIR+=$CHOCDIR/after
elseif (g:detected_os == 'LINUX')
  let $VIMDIR = $HOME.'/.config/nvim'
  let $DATADIR = $HOME.'/.local/share/nvim/site'
  let $OMNIBIN = "/usr/lib/omnisharp-roslyn/OmniSharp"
  let $NPMDIR = '/usr/lib'
  let g:python3_host_prog="/usr/bin/python3"
endif
set runtimepath^=$VIMDIR runtimepath+=$VIMDIR/after runtimepath+=$TEMPDIR runtimepath+=$DATADIR
let &packpath = &runtimepath

" Load config
source $VIMDIR/plug.vim
source $VIMDIR/.vimrc
lua <<EOF
require'plugins'
require'toggletermcmd'

local is_linux = vim.loop.os_uname().sysname == "Linux"
local is_win = vim.loop.os_uname().sysname == "Windows_NT"
local pid = vim.fn.getpid()
-- LSP setup
 require('lsp')
local ng_cmd_path = vim.env.NPMDIR .. "/@angular/language-server"
local cmd = { "node", ng_cmd_path, "--stdio", "--tsProbeLocations", vim.env.NPMDIR, "--ngProbeLocations", vim.env.NPMDIR }
require'lspconfig'.omnisharp.setup{
  cmd = { vim.env.OMNIBIN, "--languageserver" , "--hostPID", tostring(pid) };
}
if(is_win)
  then
  require'lspconfig'.angularls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = cmd,
    on_new_config = function(new_config,new_root_dir)
      new_config.cmd = cmd
    end
  }
  vim.cmd("let &shell = has('win32') ? 'powershell' : 'pwsh'")
  vim.cmd("let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'")
  vim.cmd("let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
  vim.cmd("let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'")
  vim.cmd("set shellquote= shellxquote=")
else
  require'lspconfig'.angularls.setup{}
   require('lsp')
end
-- Telescope setup
require('nvim-treesitter').setup{}
require('telescope').setup{
  extensions = {
    file_browser = {
      theme = "ivy"
    }
  }
}
require('telescope').load_extension "file_browser"
-- Toggleterm setup
  require('toggleterm').setup{
    open_mapping = [[<M-t>]],
    insert_mappings = false,
    terminal_mappings = true,
    direction = 'horizontal',
    size = 15,
    shade_terminals = false,
    -- function to run on opening the terminal
    on_open = function(term)
      vim.cmd("startinsert!")
      vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<M-q>", "<cmd>close<CR>", {noremap = true, silent = true})
    end,
    -- function to run on closing the terminal
    on_close = function(term)
      vim.cmd("startinsert!")
    end,
  }
