" --- Custom Commands ---
command -nargs=1 WLine :normal oConsole.WriteLine(<args>);<esc>$
command -nargs=1 Log :normal oDebug.Log(<args>);<esc>$
command -nargs=1 GetComp :normal a(<args>)gameObject.GetComponent<<args>>();<esc>
command -nargs=1 For :normal ofor(int i = 0; i < <args>; i++)<CR>{<CR><CR>}<esc>k
command -nargs=1 Ngi :normal oexport interface <args> {<CR>}<esc>k$o
command Serial :normal ^i[SerializeField] <esc>$
command -nargs=1 TabWidth :set tabstop=<args>|set softtabstop=<args>|set shiftwidth=<args>

" Open config session
command EditConfig :OpenSession _config
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
command Lazygit :lua _lazygit_toggle()
command Gitui :lua _gitui_toggle()
command Twui :lua _twui_toggle()
command Serv :lua _serv_toggle()
command ToggleTermTab :execute tabpagenr().'ToggleTerm'
command ToggleTermSendCurrentLineToTab :execute 'ToggleTermSendCurrentLine '.tabpagenr()
command ToggleTermSendVisualLinesToTab :execute 'ToggleTermSendVisualLines '.tabpagenr()
command ToggleTermSendVisualSelectionToTab :execute 'ToggleTermSendVisualSelection '.tabpagenr()

" UI Togglers
command SrceryBGToggle :call SrceryBGToggleFunc()
command ToggleUIPositioning :call ToggleUIPositioning()

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

" Apply colorscheme tweaks
function! ColorTweaks()
  " Status Line/TUI Colors
  hi VertSplit ctermfg=Cyan guifg=Cyan
  hi StatusLine guifg=Magenta
  hi CursorLineNr ctermfg=Magenta guifg=Magenta
  " Text Colors
  hi MatchParen ctermfg=Cyan guifg=Cyan
endfunction

" Toggle UI positioning
function! ToggleUIPositioning()
  if(g:NERDTreeWinPos=="left")
    let g:NERDTreeWinPos="right"
    let g:vista_sidebar_position="vertical topleft"
  else
    let g:NERDTreeWinPos="left"
    let g:vista_sidebar_position="vertical botright"
  endif
endfunction

function! ToggleFoldRecursive()
  let foldlevel = foldlevel(".")
  if(foldlevel > 1)
    let foldclosed = foldclosed(".")
    if (foldclosed > -1)
      normal zO
    else
      normal zc
    endif
  else
    normal za
  endif
endfunction

command ToggleFoldRecursive :call ToggleFoldRecursive()

function! s:get_visual_selection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction

function FlipSelectedBoolean()
  let old_a = @a
  normal `<"ay`>
  echom @a
  call append('.', @a . ' = !' . @a . ';')
  let @a = old_a
endfunction

command! -range FlipSelectedBoolean :call FlipSelectedBoolean()

function FlipBoolean()
  let curWord = expand("<cword>")
  call append('.', curWord . ' = !' . curWord . ';')
endfunction

" Resize split to file line count
function! SizeSplitToLines()
  let curLineCount = line("$")
  let maxLines = &lines
  if(curLineCount <= &lines)
    execute winnr("$") . "resize " . curLineCount
    let curLine = line(".")
    " Jump to first line and back to fit whole file in buffer
    normal 1zt
    execute curLine
  else
    echo "Line count exceeds max terminal height"
  endif
endfunction

command SizeSplitToLines :call SizeSplitToLines()

function! FormatJson()
python << EOF
import vim
import json
try:
    buf = vim.current.buffer
    json_content = '\n'.join(buf[:])
    content = json.loads(json_content)
    sorted_content = json.dumps(content, indent=4, sort_keys=True)
    buf[:] = sorted_content.split('\n')
except Exception, e:
    print e
EOF
endfunction
