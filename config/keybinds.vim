" Bind space as leader
let mapleader = "\<Space>"

" Reload vimrc
nnoremap sc :source $MYVIMRC<CR>

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
nnoremap <silent> <M-BS> :NERDTreeFind<CR>
tnoremap <silent> <leader><M-BS> <C-\><C-n><cmd>NERDTreeFind<CR>
nnoremap <silent> <Del> :NERDTreeToggle<CR>
tnoremap <silent> <leader><Del> <C-\><C-n><cmd>NERDTreeToggle<CR>

" Vimspector
nnoremap <M-d> :call vimspector#Launch()<CR>
nnoremap <M-e> :call vimspector#Reset()<CR>
nnoremap <M-c> :call vimspector#Continue()<CR>

nnoremap <M-t> :call vimspector#ToggleBreakpoint()<CR>
nnoremap <M-T> :call vimspector#ClearBreakpoints()<CR>

nnoremap <M-r> <Plug>VimspectorRestart
nnoremap <M-n> <Plug>VimspectorStepOut
nnoremap <M-b> <Plug>VimspectorStepInto
nnoremap <M-v> <Plug>VimspectorStepOver

" Vista
nnoremap <silent> <leader>v :Vista!!<CR>

" Telescope
nnoremap sf <cmd>Telescope find_files<cr>
nnoremap sg <cmd>Telescope live_grep<cr>
nnoremap sb <cmd>Telescope buffers<cr>
nnoremap sh <cmd>Telescope help_tags<cr>
nnoremap ss <cmd>Telescope grep_string<cr>
" List LSP references for word under cursor
nnoremap sr <cmd>Telescope lsp_references<cr>
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap sd <cmd>Telescope lsp_definitions<cr>
" Goto implementation of word under cursor if only one, otherwise list in Telescope
nnoremap si <cmd>Telescope lsp_implementations<cr>
" Goto definition of the type of the word under cursor if only one, otherwise list in Telescope
nnoremap st <cmd>Telescope lsp_type_definitions<cr>

" FineCmdline
nnoremap <leader>; <cmd>FineCmdline<cr>

" Bufexplorer
nnoremap gb <cmd>ToggleBufExplorer<cr>

" Lazygit
nnoremap <silent> gv :Lazygit<CR>
tnoremap <silent> gv <C-\><C-n>:Lazygit<CR>

" Taskwarrior
nnoremap <silent> gt :Twui<CR>
tnoremap <silent> gt <C-\><C-n>:Twui<CR>

" Lightspeed
nnoremap <C-s> <plug>Lightspeed_s<cr>
xnoremap <C-s> <plug>Lightspeed_s<cr>
nnoremap <C-S-S> <plug>Lightspeed_S<cr>
xnoremap <C-S-S> <plug>Lightspeed_S<cr>

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
" Toggle terminal for current tab
nnoremap <C-y> <cmd>ToggleTermTab<CR>
tnoremap <C-y> <cmd>ToggleTermTab<CR>
" Toggle all
nnoremap <M-y> <cmd>ToggleTermToggleAll<CR>
tnoremap <M-y> <cmd>ToggleTermToggleAll<CR>

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
" Reload CoC
nnoremap <silent> <F1> :LspRestart<CR>:CocRestart<CR>
" Insert escape character
inoremap <F1> <C-v>
" Git write shortcut
nnoremap <C-F1> :Gw<CR>
nnoremap <F25> :Gw<CR>
" Format file
nnoremap <silent> <M-F1> :OmniSharpCodeFormat<CR>:Format<CR>
nnoremap <silent> <F49> :OmniSharpCodeFormat<CR>:Format<CR>
" Lsp Info
nnoremap <silent> <F2> :LspInfo<CR>
" Sort lines
xnoremap <F2> :sort<CR>
" Git commit shortcut
nnoremap <C-F2> :Gcm ""<Left>
nnoremap <F26> :Gcm ""<Left>
" Fold buffer
nnoremap <M-F2> :Fold<CR>
nnoremap <F50> :Fold<CR>
" Delete session
nnoremap <F3> :SessionDelete<CR>
" Git pull shortcut
nnoremap <C-F3> :G pull<CR>
nnoremap <F27> :G pull<CR>
" Organize imports
nnoremap <M-F3> :OR<CR>
nnoremap <F51> :OR<CR>
" Buffer delete menu
nnoremap <F4> :Bdelete! menu<CR>
" Git push shortcut
nnoremap <C-F4> :Gp<CR>
nnoremap <F28> :Gp<CR>
" Coc format
nnoremap <M-F4> :Format<CR>
nnoremap <F52> :Format<CR>
" Semicolon shortcut
inoremap <F5> <ESC>A;<ESC>
" Git diff split
nnoremap <C-F5> :Gdiffsplit<CR>
nnoremap <F29> :Gdiffsplit<CR>
" Vimspector Start/Continue Debugging
nnoremap <F5> <Plug>VimspectorContinue
" Vimspector Stop Debugging
nnoremap <F6> <Plug>VimspectorStop
" Vimspector Step Out
nnoremap <F7> <Plug>VimspectorStepOut
" Vimspector Step Into
nnoremap <F8> <Plug>VimspectorStepInto
" Vimspector Step Over
nnoremap <F9> <Plug>VimspectorStepOver
" Vimspector Toggle Breakpoint
nnoremap <F10> <Plug>VimspectorToggleBreakpoint
" Vimspector Clear Breakpoints
nnoremap <F11> :call vimspector#ClearBreakpoints()<CR>
" Coc Quickfix
nnoremap <F12> <Plug>(coc-codeaction)<CR>

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
tnoremap <Esc> <C-\><C-n>
" Escape in terminal rebind
tnoremap <leader><Esc> <Esc>
" Reopen terminal in current buffer
tnoremap <M-r> <C-\><C-n>:terminal<CR>
" Split terminal buffer vertically
tnoremap <M-v> <C-\><C-n><cmd>split\|terminal<CR>
" Split terminal buffer
tnoremap <M-i> <C-\><C-n><cmd>vsplit\|terminal<CR>
" Restart process
tnoremap <F5> <C-c><Up><CR>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P

" In next/last parentheses
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F(vi(<cr>
" In next/last bracket
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F[vi[<cr>
" In next/last brace
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F{vi{<cr>
" In next/last angle bracket
onoremap in< :<c-u>normal! f<vi<<cr>
onoremap il< :<c-u>normal! F<vi<<cr>
" In next/last single quote
onoremap in' :<c-u>normal! f'vi'<cr>
onoremap il' :<c-u>normal! F'vi'<cr>
" In next/last double quote
onoremap in" :<c-u>normal! f"vi"<cr>
onoremap il" :<c-u>normal! F"vi"<cr>
" In next/last backtick
onoremap in` :<c-u>normal! f`vi`<cr>
onoremap il` :<c-u>normal! F`vi`<cr>

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

" Quick cursor movement/deletion in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
" End LOC with semicolon
inoremap <C-f> <ESC>A;
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
