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
  set runtimepath^=$HOME/AppData/Local/nvim runtimepath+=$HOME/AppData/Local/nvim/after
elseif (g:detected_os == 'LINUX')
  set runtimepath^=~/.config/nvim runtimepath+=~/.config/nvim/after
endif
let &packpath = &runtimepath

" Load config
if (g:detected_os == 'WINDOWS')
  source $HOME/AppData/Local/nvim/plug.vim
  source $HOME/AppData/Local/nvim/.vimrc
elseif (g:detected_os == 'LINUX')
  source ~/.config/nvim/plug.vim
  source ~/.config/nvim/.vimrc
endif

" LSP setup
lua << EOF
local is_linux = vim.loop.os_uname().sysname == "Linux"
local pid = vim.fn.getpid()
local omnisharp_bin = "C:/Users/kohlbern.jary/AppData/Local/omnisharp-vim/omnisharp-roslyn/OmniSharp.exe"
if(is_linux)
then
  omnisharp_bin = "/usr/lib/omnisharp-roslyn/OmniSharp"
end
require'lspconfig'.omnisharp.setup{
  cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
}
require'lspconfig'.angularls.setup{}
EOF
