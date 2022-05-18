" --- Custom Commands ---
command -nargs=1 WLine :normal oConsole.WriteLine(<args>);<esc>$
command -nargs=1 Log :normal oDebug.Log(<args>);<esc>$
command -nargs=1 GetComp :normal a(<args>)gameObject.GetComponent<<args>>();<esc>
command -nargs=1 For :normal ofor(int i = 0; i < <args>; i++)<CR>{<CR><CR>}<esc>k
command -nargs=1 Ngi :normal oexport interface <args> {<CR>}<esc>k$o
command Serial :normal ^i[SerializeField] <esc>$
command -nargs=1 TabWidth :set tabstop=<args>|set softtabstop=<args>|set shiftwidth=<args>

command EditVimrc :tabnew|e $VIMDIR/.vimrc
command EditInit :tabnew|e $VIMDIR/init.vim
command EditKeys :tabnew|e $VIMDIR/config/keybinds.vim
command EditPlugs :tabnew|e $VIMDIR/config/plugins.vim
command EditCmds :tabnew|e $VIMDIR/config/commands.vim

" vim-fugitive shortcuts
command Gc :G commit
command -nargs=1 Gcm :G commit -m <args>
command Gp :G push

" Toggleterm commands
command Gitui :lua _gitui_toggle()
command Twui :lua _twui_toggle()

" UI Togglers
command SrceryBGToggle :call SrceryBGToggleFunc()

" --- Custom Functions ---
" Toggle BG transparency
function! SrceryBGToggleFunc()
  if g:srcery_bg_passthrough
    let g:srcery_bg_passthrough = 0
  else
    let g:srcery_bg_passthrough = 1
  endif
  colorscheme srcery
  call ColorTweaks()
endfunction

function! ColorTweaks()
  " NERDTree Colors
  hi NERDTreeFile ctermfg=Magenta guifg=Magenta
  " Vista Colors
  hi VistaTag ctermfg=Magenta guifg=Magenta
  hi VistaColon ctermfg=Red guifg=Red
  hi VistaLineNr ctermfg=Cyan guifg=Cyan
  hi default link VistaIcon SrceryGreen
  " Status Line/TUI Colors
  " hi CursorLine ctermfg=Yellow guifg=Yellow
  hi VertSplit ctermfg=Cyan guifg=Cyan
  hi StatusLine cterm=NONE ctermfg=Magenta gui=NONE guifg=Magenta
  hi StatusLineNC cterm=NONE ctermfg=Cyan gui=NONE guifg=Cyan
  " Text Colors
  hi MatchParen ctermfg=Cyan guifg=Cyan
endfunction
