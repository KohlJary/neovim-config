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
  let $OMNIBIN = $HOME.'/AppData/Local/omnisharp-vim/omnisharp-roslyn/OmniSharp.exe'
  let $NPMDIR = $HOME.'/AppData/Roaming/npm/node_modules'
  let $CHOCDIR = 'C:/ProgramData/chocolatey/bin'
  set runtimepath^=$CHOCDIR+=$CHOCDIR/after
elseif (g:detected_os == 'LINUX')
  let $VIMDIR = $HOME.'/.config/nvim'
  let $OMNIBIN = "/usr/lib/omnisharp-roslyn/OmniSharp"
  let $NPMDIR = '/usr/lib'
  let g:python3_host_prog="/usr/bin/python3"
endif
set runtimepath^=$VIMDIR runtimepath+=$VIMDIR/after
let &packpath = &runtimepath

" Load config
source $VIMDIR/plug.vim
source $VIMDIR/.vimrc

lua << EOF
local is_linux = vim.loop.os_uname().sysname == "Linux"
local is_win = vim.loop.os_uname().sysname == "Windows_NT"
local pid = vim.fn.getpid()
-- LSP setup
-- require('lsp')
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
  -- require('lsp')
end
-- Telescope setup
require('nvim-treesitter').setup{}
require('telescope').setup{}
-- Toggleterm setup
require('toggleterm').setup{
  open_mapping = [[<C-y>]],
  insert_mappings = false,
  terminal_mappings = true,
  direction = 'vertical',
  size = vim.o.columns * 0.25,
  shade_terminals = false,
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<C-q>", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
}
require('toggletermcmd').setup{
  open_mapping = [[<M-s>]]
}
-- nvim-tree setup
require('nvim-tree').setup{
  view = {
    side = "right",
    preserve_window_proportions = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "<C-s>", action = "system_open" },
        { key = "i", action = "vsplit" },
        { key = "x", action = "close_node" },
        { key = "s", action = "split" },
      },
    },
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
  },
}
