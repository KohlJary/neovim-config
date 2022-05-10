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
elseif (g:detected_os == 'LINUX')
  let $VIMDIR = $HOME.'/.config/nvim'
  let $OMNIBIN = '/usr/lib/omnisharp-roslyn/OmniSharp'
  let $NPMDIR = $HOME.''
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
else
require'lspconfig'.angularls.setup{}
end
-- Telescope setup
require('nvim-treesitter').setup{}
require('telescope').setup{}
EOF
