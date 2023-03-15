" Bind space as leader
let mapleader = "\<Tab>"

" Map F-keys above 12 for Windows
if (g:detected_os == 'WINDOWS')
  nmap <M-C-F1> <F13>
  nmap <M-C-F2> <F14>
  nmap <M-C-F3> <F15>
  nmap <M-C-F4> <F16>
  nmap <M-C-F5> <F17>
  nmap <M-C-F6> <F18>
  nmap <M-C-F7> <F19>
  nmap <M-C-F8> <F20>
  nmap <M-C-F9> <F21>
  nmap <M-C-F10> <F22>
  nmap <M-C-F11> <F23>
  nmap <M-C-F12> <F24>
  tmap <M-C-F1> <F13>
  tmap <M-C-F2> <F14>
  tmap <M-C-F3> <F15>
  tmap <M-C-F4> <F16>
  tmap <M-C-F5> <F17>
  tmap <M-C-F6> <F18>
  tmap <M-C-F7> <F19>
  tmap <M-C-F8> <F20>
  tmap <M-C-F9> <F21>
  tmap <M-C-F10> <F22>
  tmap <M-C-F11> <F23>
  tmap <M-C-F12> <F24>
endif

" Omnisharp mappings
nnoremap <M-[> :OmniSharpNavigateUp<CR>
nnoremap <M-]> :OmniSharpNavigateDown<CR>
nnoremap <M-f> :OmniSharpFindUsages<CR>
nnoremap <M-g> :OmniSharpGotoDefinition split<CR>
nnoremap <M-R> :OmniSharpRestartServer<CR>
nnoremap <leader>oss :OmniSharpStatus<CR>

" NERDTree
nnoremap <silent> <BS> :NERDTreeFocus<CR>
tnoremap <silent> <leader><BS> <C-\><C-n><cmd>NERDTreeFocus<CR>
nnoremap <silent> <Del> :NERDTreeFind<CR>
tnoremap <silent> <leader><Del> <C-\><C-n><cmd>NERDTreeFind<CR>
nnoremap <silent> <F24> :NERDTreeToggleVCS<CR>
tnoremap <silent> <leader><F24> <C-\><C-n><cmd>NERDTreeToggleVCS<CR>

" Vimspector
" nnoremap <M-d> :call vimspector#Launch()<CR>
" nnoremap <M-e> :call vimspector#Reset()<CR>
" nnoremap <M-c> :call vimspector#Continue()<CR>

" nnoremap <M-t> :call vimspector#ToggleBreakpoint()<CR>
" nnoremap <M-T> :call vimspector#ClearBreakpoints()<CR>

" FineCmdline
nnoremap <leader>; <cmd>FineCmdline<cr>

" Lightspeed
nnoremap s <plug>Lightspeed_s<cr>
xnoremap s <plug>Lightspeed_s<cr>
nnoremap <C-s> <plug>Lightspeed_S<cr>
xnoremap <C-s> <plug>Lightspeed_S<cr>

" Toggleterm
" Toggle by tab number
tnoremap <M-1> <cmd>1ToggleTerm<CR>
nnoremap <M-1> <cmd>1ToggleTerm<CR>
tnoremap <M-2> <cmd>2ToggleTerm<CR>
nnoremap <M-2> <cmd>2ToggleTerm<CR>
tnoremap <M-3> <cmd>3ToggleTerm<CR>
nnoremap <M-3> <cmd>3ToggleTerm<CR>
tnoremap <M-4> <cmd>4ToggleTerm<CR>
nnoremap <M-4> <cmd>4ToggleTerm<CR>
tnoremap <M-5> <cmd>5ToggleTerm<CR>
nnoremap <M-5> <cmd>5ToggleTerm<CR>
tnoremap <M-6> <cmd>6ToggleTerm<CR>
nnoremap <M-6> <cmd>6ToggleTerm<CR>
tnoremap <M-7> <cmd>7ToggleTerm<CR>
nnoremap <M-7> <cmd>7ToggleTerm<CR>
tnoremap <M-8> <cmd>8ToggleTerm<CR>
nnoremap <M-8> <cmd>8ToggleTerm<CR>
tnoremap <M-9> <cmd>9ToggleTerm<CR>
nnoremap <M-9> <cmd>9ToggleTerm<CR>
" Send current line to ToggleTerm
nnoremap <leader>t <cmd>ToggleTermSendCurrentLineToTab<CR>
" Send current selected lines to ToggleTerm
xnoremap <leader>T <cmd>ToggleTermSendVisualLinesToTab<CR>
" Send current selection to ToggleTerm
xnoremap <leader>t <cmd>ToggleTermSendVisualSelectionToTab<CR>

" Split operations
" Movement
nnoremap <silent> <C-h> <C-w>h
tnoremap <silent> <C-h> <Cmd>wincmd h<CR>
nnoremap <silent> <C-j> <C-w>j
tnoremap <silent> <C-j> <Cmd>wincmd j<CR>
nnoremap <silent> <C-k> <C-w>k
tnoremap <silent> <C-k> <Cmd>wincmd k<CR>
nnoremap <silent> <C-l> <C-w>l
tnoremap <silent> <C-l> <Cmd>wincmd l<CR>
" Resizing
nnoremap <Left> <C-w><
tnoremap <C-Left> <C-\><C-n><C-w><i
nnoremap <Right> <C-w>>
tnoremap <C-Right> <C-\><C-n><C-w>>i
nnoremap <Up> <C-w>+
tnoremap <C-Up> <C-\><C-n><C-w>+i
nnoremap <Down> <C-w>-
tnoremap <C-Down> <C-\><C-n><C-w>-i
" Maximize/reset size
nnoremap + <C-w>_
nnoremap - <C-w>\|
nnoremap = <C-w>=
nnoremap =- :set ead=ver ea noea<CR> " set windows equal vertically (^W, =, =)
nnoremap =\ :set ead=hor ea noea<CR> " set windows equal horizontally (^W, =, -)
tnoremap <leader>= <C-\><C-n><C-w>=i
" Rotate splits
nnoremap <leader>r <C-w>r
" Clone splits
nnoremap <M-S> :vsp<CR>
nnoremap <M-I> :sp<CR>
" New splits
nnoremap <M-s> :vnew<CR>
nnoremap <M-i> :new<CR>
" Next/prev buffer
" nnoremap <leader>n :bn<CR>
" nnoremap <leader>p :bp<CR>
" Close buffer
nnoremap <C-q> :bp\|bd! #<CR>

" Tab operations
" New tab
nnoremap <C-t> :tabnew<CR>
tnoremap <C-t> <C-/><C-n><cmd>tabnew<CR>
" Open current buffer in new tab
nnoremap <silent> <C-e> :tabnew\|e #<CR>
" Close tab
nnoremap <C-w> :tabclose<CR>
" Previous tab
nnoremap <C-p> :tabp<CR>
tnoremap <C-p> <C-/><C-n><cmd>tabp<CR>
" Next tab
nnoremap <C-n> :tabn<CR>
tnoremap <C-n> <C-/><C-n><cmd>tabn<CR>
" Move tabs
" nnoremap <M--> :-tabm<CR>
" nnoremap <M-=> :+tabm<CR>
" nnoremap <M-1> :tabr<CR>
" nnoremap <M-2> 2gt
" nnoremap <M-3> 3gt
" nnoremap <M-4> 4gt
" nnoremap <M-5> 5gt
" nnoremap <M-6> 6gt
" nnoremap <M-7> 7gt
" nnoremap <M-8> 8gt
" nnoremap <M-9> :tabl<CR>

" Fold operations
nnoremap <C-f> zA
vnoremap <C-f> zf

" Function keys
" Coc Quickfix
nnoremap <F1> <Plug>(coc-codeaction)<CR>
" Format file
nnoremap <F2> <cmd>Format<CR>
" Sort lines
xnoremap <F2> <cmd>sort<CR>
" Fold file
nnoremap <F3> <cmd>Fold<CR>
" Buffer delete menu
nnoremap <F4> <cmd>Bdelete! menu<CR>
" Coc Quickfix
nnoremap <F5> <Plug>(coc-codeaction)<CR>
" Restart process
tnoremap <F5> <C-c><Up><CR>
" Toggle terminal for current tab
nnoremap <F7> <cmd>ToggleTermTab<CR>
tnoremap <F7> <cmd>ToggleTermTab<CR>
tnoremap <leader><F7> <F7>
" Toggle all
nnoremap <F8> <cmd>ToggleTermToggleAll<CR>
tnoremap <F8> <cmd>ToggleTermToggleAll<CR>
tnoremap <leader><F8> <F8>
" Relative line number
nnoremap <F9> <cmd>set rnu!<cr>
" Reload CoC
nnoremap <F10> <cmd>LspRestart<CR><cmd>CocRestart<CR>
" Reload config
nnoremap <F12> :source $MYVIMRC<CR>
" Bufexplorer
nnoremap <silent> <F13> <cmd>ToggleBufExplorer<cr>
" Lazygit
nnoremap <silent> <F14> :Lazygit<CR>
tnoremap <silent> <F14> <C-\><C-n>:Lazygit<CR>
" Taskwarrior
nnoremap <silent> <F15> :Twui<CR>
tnoremap <silent> <F15> <C-\><C-n>:Twui<CR>
" Telescope
nnoremap <F16> <cmd>Telescope<cr>
nnoremap <F16>f <cmd>Telescope find_files<cr>
nnoremap <F16>g <cmd>Telescope live_grep<cr>
nnoremap <F16>b <cmd>Telescope buffers<cr>
nnoremap <F16>h <cmd>Telescope help_tags<cr>
nnoremap <F16>s <cmd>Telescope grep_string<cr>
" List LSP references for word under cursor
nnoremap <F16>r <cmd>Telescope lsp_references<cr>
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap <F16>d <cmd>Telescope lsp_definitions<cr>
" Goto implementation of word under cursor if only one, otherwise list in Telescope
nnoremap <F16>i <cmd>Telescope lsp_implementations<cr>
" Goto definition of the type of the word under cursor if only one, otherwise list in Telescope
nnoremap <F16>t <cmd>Telescope lsp_type_definitions<cr>
" Vimspector Start/Continue Debugging
nnoremap <F17> <Plug>VimspectorContinue
" Vimspector Stop Debugging
nnoremap <F18> <Plug>VimspectorStop
" Vimspector Step Out
nnoremap <F19> <Plug>VimspectorStepOut
" Vimspector Step Into
nnoremap <F20> <Plug>VimspectorStepInto
" Vimspector Step Over
nnoremap <F21> <Plug>VimspectorStepOver
" Vimspector Toggle Breakpoint
nnoremap <F22> <Plug>VimspectorToggleBreakpoint
" Vimspector Clear Breakpoints
nnoremap <F23> <cmd>call vimspector#ClearBreakpoints()<CR>

" Location list toggle
nnoremap <leader>l :LToggle<CR>
" Quickfix list toggle
nnoremap <leader>q :QToggle<CR>

" Run last command
nnoremap <M-;> @:<CR>
" Run last macro
nnoremap <M-.> @@

" Terminal bindings
" Escape terminal
tnoremap <Esc><Esc> <C-\><C-n>
tnoremap <leader><Esc> <C-\><C-n>
" Reopen terminal in current buffer
tnoremap <M-r> <C-\><C-n>:terminal<CR>
" Split terminal buffer vertically
tnoremap <M-s> <C-\><C-n><cmd>split\|terminal<CR>
" Split terminal buffer
tnoremap <M-i> <C-\><C-n><cmd>vsplit\|terminal<CR>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P

" In next/last parentheses
onoremap i( :<c-u>normal! f(vi(<cr>
onoremap I( :<c-u>normal! F(vi(<cr>
" In next/last bracket
onoremap i[ :<c-u>normal! f[vi[<cr>
onoremap I[ :<c-u>normal! F[vi[<cr>
" In next/last brace
onoremap i{ :<c-u>normal! f{vi{<cr>
onoremap I{ :<c-u>normal! F{vi{<cr>
" In next/last angle bracket
onoremap i< :<c-u>normal! f<vi<<cr>
onoremap I< :<c-u>normal! F<vi<<cr>
" In next/last single quote
onoremap i' :<c-u>normal! f'vi'<cr>
onoremap I' :<c-u>normal! F'vi'<cr>
" In next/last double quote
onoremap i" :<c-u>normal! f"vi"<cr>
onoremap I" :<c-u>normal! F"vi"<cr>
" In next/last backtick
onoremap i` :<c-u>normal! f`vi`<cr>
onoremap I` :<c-u>normal! F`vi`<cr>

" Yank all file text
nnoremap ya mQggyG`Q:delm Q<CR><cmd>echo "Yank All"<cr>

" Paste in region
nnoremap pw viwp
nnoremap p' vi'p
nnoremap p" vi"p
nnoremap p[ vi[p
nnoremap p{ vi{p
nnoremap p( vi(p
nnoremap p< vi<p
" Paste overwriting all
nnoremap pa ggVGp<C-o>
" Paste overwriting line
nnoremap pl Vp
" Quick paste
nnoremap pp p

" Toggle folds with <CR>
nnoremap <CR> :ToggleFoldRecursive<CR>

" Quick cursor movement/deletion in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
" End LOC with semicolon
inoremap <M-;> <ESC>A;
" End LOC with comma
inoremap <C-m> <ESC>A,
" Inline comment at EOL
inoremap <C-c> <End><Space>//<Space>
" Swap case of next character
inoremap <C-s> <Esc>l~hi
" Ctrl backspace/delete behavior
inoremap <M-BS>  <C-w>
inoremap <M-Del> <C-o>de
" inoremap <C-w> <ESC>wa
inoremap <C-b> <ESC>bi
inoremap <C-e> <ESC>ea
inoremap <C-u> <ESC>O
inoremap <C-o> <ESC>o
inoremap <C-p> <ESC>pa
" Select to beginning/end of line from insert mode
inoremap <S-Home> <ESC>v^
inoremap <S-End> <ESC>lv$

" File Traversal
" Page up/down
nnoremap <C-Up> <C-u>
nnoremap <C-Down> <C-d>
" Line start/end
nnoremap <C-Left> ^
nnoremap <C-Right> $
" Location navigation
nnoremap <M-Left> :lprev<CR>
nnoremap <M-Up> :lfirst<CR>
nnoremap <M-Down> :llast<CR>
nnoremap <M-Right> :lnext<CR>

" Text  manipulation
" Redo
nnoremap <S-u> <C-r>
" Commenting line(s)
nnoremap <C-c> :Commentary<CR>
xnoremap <C-c> :Commentary<CR>
" Swap character
nnoremap <S-Left> hdlph
nnoremap <S-Right> dlp
" Swap lines
nnoremap <S-Up> <Up>ddp<Up>
nnoremap <S-Down> ddp
" Change indentation
nnoremap <leader>, <<
vnoremap <leader>, <
nnoremap <leader>. >>
vnoremap <leader>. >
" Swap case
nnoremap S ~h
xnoremap S ~
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap va ggVG
" Format file text
nnoremap <leader>= mfgg=G`f
" Clear search highlighting
nnoremap <leader>/ :let @/=""<CR>

" Remap <C-w>
nnoremap <M-w> <C-w>
" Remap =
nnoremap <leader>= =
