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
require'lsp'
require'treesitter'
require'telescope_conf'
require'toggleterm_conf'
require'dap_conf'
require'neoai_conf'
