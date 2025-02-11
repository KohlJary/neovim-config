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
command Gce :G commit --allow-empty -m "Empty Commit."
command -nargs=1 Gcm :G commit -m <args>
command Gp :G push

" Toggleterm commands
command Lazygit :lua _lazygit_toggle()
command Gitui :lua _gitui_toggle()
command Twui :lua _twui_toggle()
command Btop :lua _btop_toggle()
command Vifm :lua _vifm_toggle()
command Serv :lua _serv_toggle()
command FloatTerm :lua _float_toggle()
command ToggleTermTab :execute tabpagenr().'ToggleTerm'
command ToggleTermSendCurrentLineToTab :execute 'ToggleTermSendCurrentLine '.tabpagenr()
command ToggleTermSendVisualLinesToTab :execute 'ToggleTermSendVisualLines '.tabpagenr()
command ToggleTermSendVisualSelectionToTab :execute 'ToggleTermSendVisualSelection '.tabpagenr()

" UI Togglers
command SrceryBGToggle :call SrceryBGToggleFunc()
command ToggleUIPositioning :call ToggleUIPositioning()

" Misc
command CSLoadProjects :call CSLoadProjects()
command DNFormatEx :call DotnetFormatException()

" --- Custom Functions ---
" Toggle BG transparency
function! SrceryBGToggleFunc()
  if g:srcery_bg == ['NONE', 'NONE']
    let g:srcery_bg = [g:srcery_black, 0]
  else
    let g:srcery_bg = ['NONE', 'NONE']
  endif
  colorscheme srcery
  call ColorTweaks()
endfunction

" Apply colorscheme tweaks
function! ColorTweaks()
  " Status Line/TUI Colors
  hi SrceryBrightMagentaOnCyan ctermfg=5 guifg=#ff5c8f ctermbg=6 guibg=#0aaeb3
  hi SrceryBrightMagentaOnBlack ctermfg=5 guifg=#ff5c8f ctermbg=237 guibg=#3a3a3a
  hi clear VertSplit
  hi link VertSplit SrceryBrightCyan
  hi clear StatusLine
  hi link StatusLine SrceryBrightMagenta
  hi clear StatusLineNC
  hi link StatusLineNC SrceryCyan
  " hi Cursor ctermfg=6 guifg=#0aaeb3 ctermbg=5 guibg=#ff5c8f
  hi clear CursorLineNr
  hi link CursorLineNr SrceryBrightMagentaOnBlack
  hi clear LineNr
  hi link LineNr SrceryCyan
  let g:srcery_inverse_match_paren = 1
  let g:rainbow#pairs = [['(',')'],['[',']'],['{','}']]
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
  echom foldlevel
  if(foldlevel > 1)
    let foldclosed = foldclosed(".")
    if (foldclosed > -1)
      normal zO
    else
      normal zc
    endif
  else
    let foldclosed = foldclosed(".")
    if (foldclosed > -1)
      normal zr
    else
      normal zm
    endif
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
    " execute winnr("$") . "resize " . curLineCount
    execute "resize " . curLineCount
    " execute "normal z" . curLineCount
    " Jump to first line and back to fit whole file in buffer
    let curLine = line(".")
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

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

function! ToggleLocationList()
    if empty(filter(getwininfo(), 'v:val.loclist'))
        lopen
    else
        lclose
    endif
endfunction

function! ToggleFoldMethod()
  if &fdm == 'syntax'
    setlocal foldmethod=manual
    echom 'Fold Method: Manual'
  else
    setlocal foldmethod=syntax
    echom 'Fold Method: Syntax'
  endif
endfunction

function! CSLoadProjects()
  argadd **/*.csproj **/*.sln
  LspRestart
endfunction

function! GitEmptyCommit()
  execute "G commit --allow-empty -m \"Empty Commit.\""
endfunction

function! DotnetFormatException()
  %s/\\r\\n/\r/g
  %s/\\n/\r/g
  %s/\\t/\t/g
endfunction

function! InsertBoilerplate(lang, snipName, ...)
    normal! mb
    normal! viw"wy
    let path = "$VIMDIR/boilerplate/" . a:lang . "/" . a:snipName . ".txt"
    normal k
    let snipfile = readfile(expand(path))
    for line in snipfile
        if a:0 == 0
        elseif a:0 == 1
            let arg = "" . a:1
            let line = substitute(line, '\$', '\=arg', 'g')
        else
            let arg = "" . a:1
            let line = substitute(line, '{0}', '\=arg', 'g')
            let arg = "" . a:2
            let line = substitute(line, '{1}', '\=arg', 'g')
        endif
        put =line
    endfor
    execute "lua vim.lsp.buf.format()"
    normal! `bmb
endfunction

function! CSGenerateDocComments()
    let summary = input("Function Summary: ")
    let summary = substitute(summary, '\(\*\)\(.\w*\)\(\*\)', '<see cref="\2" \/>', 'g')
    call InsertBoilerplate("cs", "doc_comment_sum", summary)
    let param = "$"
    while param != ""
        let param = input("Add Parameter: ")
        let param = substitute(param, '\(\*\)\(.\w*\)\(\*\)', '<see cref="\2" \/>', 'g')
        if param != ""
            let paramSum = input("Parameter Summary: ")
            let paramSum = substitute(paramSum, '\(\*\)\(.\w*\)\(\*\)', '<see cref="\2" \/>', 'g')
            call InsertBoilerplate("cs", "doc_comment_param", param, paramSum)
        endif
    endwhile
    let return = input("Return Summary: ")
    let return = substitute(return, '\(\*\)\(.\w*\)\(\*\)', '<see cref="\2" \/>', 'g')
    if return != ""
        call InsertBoilerplate("cs", "doc_comment_return", return)
    endif
endfunction

function! CSSeeCrefSubstitute(input)
    let result = substitute(input, '\(\*\)\(.\w*\)\(\*\)', '<see cref="\2" \/>', 'g')
    return result
endfunction
