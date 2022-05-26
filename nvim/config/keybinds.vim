let mapleader = ' '

" Omnisharp mappings
nnoremap <A-[> :OmniSharpNavigateUp<CR>
nnoremap <A-]> :OmniSharpNavigateDown<CR>
nnoremap <A-f> :OmniSharpFindUsages<CR>
nnoremap <A-g> :OmniSharpGotoDefinition split<CR>
nnoremap <A-R> :OmniSharpRestartServer<CR>
nnoremap <leader>oss :OmniSharpStatus<CR>

" NERDTree
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <CR> :NERDTreeFocus<CR>
nnoremap <A-m> :NERDTreeMirror<CR>
nnoremap <A-{> :let Tlist_Use_Right_Window=1<CR>:let g:NERDTreeWinPos="left"<CR>:NERDTree<CR>:TlistClose<CR>:TlistOpen<CR>
nnoremap <A-}> :let Tlist_Use_Right_Window=0<CR>:let g:NERDTreeWinPos="right"<CR>:NERDTree<CR>:TlistClose<CR>:TlistOpen<CR>

" Vista
nnoremap <silent> <C-t> :Vista<CR>
nnoremap <silent> <C-s> :Vista!!<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Bufexplorer
nnoremap <C-g> <cmd>BufExplorerHorizontalSplit<cr>

" Split operations
" Movement
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l
" Resizing
nnoremap <Left> <C-w><
nnoremap <Right> <C-w>>
nnoremap <Up> <C-w>+
nnoremap <Down> <C-w>-
" Maximize/reset size
nnoremap + <C-w>_
nnoremap \\ <C-w>\|
nnoremap = <C-w>=
" Rotate splits
nnoremap <A-r> <C-w>r
" New splits
nnoremap <A-i> :vnew \| BufExplorer<CR>
nnoremap <A-v> :new \| BufExplorer<CR>

" Buffer operations
" Close buffer
nnoremap <C-q> :bp\|bd! #<CR>
nnoremap <leader>q :q<CR>
" Prev/next buffer
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>

" Tab operations
" New/close tabs
nnoremap <A-t> :tabnew<CR>
nnoremap <A-q> :tabclose<CR>
" Previous/next tab
nnoremap <A-p> :tabp<CR>
nnoremap <A-n> :tabn<CR>
" Move tabs
nnoremap <A--> :-tabm<CR>
nnoremap <A-=> :+tabm<CR>
nnoremap <A-1> :tabr<CR>
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> :tabl<CR>

" Fold operations
nnoremap <A-o> za
vnoremap <A-o> zf

" Function keys
" Buffer delete menu
nnoremap <F1> :SaveSession
" Insert escape character
inoremap <F1> <C-v>
" Git write shortcut
nnoremap <C-F1> :Gw<CR>
nnoremap <F25> :Gw<CR>
" Format file
nnoremap <silent> <M-F1> :OmniSharpCodeFormat<CR>:Format<CR>
nnoremap <silent> <F49> :OmniSharpCodeFormat<CR>:Format<CR>
" Save session
nnoremap <F2> :OpenSession<CR>
" Sort lines
xnoremap <F2> :sort<CR>
" Git commit shortcut
nnoremap <C-F2> :Gcm ""<Left>
nnoremap <F26> :Gcm ""<Left>
" Fold buffer
nnoremap <M-F2> :Fold<CR>
nnoremap <F50> :Fold<CR>
" Delete session
nnoremap <F3> :DeleteSession<CR>
" Git pull shortcut
nnoremap <C-F3> :G pull<CR>
nnoremap <F27> :G pull<CR>
" Organize imports
nnoremap <M-F3> :OR<CR>
nnoremap <F51> :OR<CR>
" Open terminal vertical split
nnoremap <F4> :Bdelete! menu<CR>
" Git push shortcut
nnoremap <C-F4> :Gp<CR>
nnoremap <F28> :Gp<CR>
" Coc format
nnoremap <M-F4> :Format<CR>
nnoremap <F52> :Format<CR>
" Reload vimrc
nnoremap <F5> :source $MYVIMRC<CR>
" Semicolon shortcut
inoremap <F5> <ESC>A;<ESC>
" Git diff split
nnoremap <C-F5> :Gdiffsplit<CR>
nnoremap <F29> :Gdiffsplit<CR>
" Reload CoC
nnoremap <silent> <F6> :LspRestart<CR>:CocRestart<CR>
" Lsp Info
nnoremap <silent> <F7> :LspInfo<CR>
" Toggle bg passthrough
nnoremap <silent> <F8> :SrceryBGToggle<CR>
" Toggle cursorline for buffer
nnoremap <silent> <F9> :setlocal cursorline!<CR>
" Toggle relative line numbering for buffer
nnoremap <silent> <F10> :setlocal rnu!<CR>
" Buffer delete menu
nnoremap <F11> :Bdelete! menu<CR>
" Coc Quickfix
nnoremap <F12> :<C-u>CocAction<CR>
" Bufexplorer
nnoremap <C-F12> :BufExplorer<CR>
" Plugin install
nnoremap <M-F12> :PlugInstall<CR>
nnoremap <F72> :PlugInstall<CR>
" Lazygit
tnoremap <F13> <C-\><C-n>:Lazygit<CR>
tnoremap <M-C-F1> <C-\><C-n>:Lazygit<CR>
nnoremap <F13> :Lazygit<CR>
nnoremap <M-C-F1> :Lazygit<CR>
" Taskwarrior tui
tnoremap <F14> <C-\><C-n>:Twui<CR>
tnoremap <M-C-F2> <C-\><C-n>:Twui<CR>
nnoremap <F14> :Twui<CR>
nnoremap <M-C-F2> :Twui<CR>
" Find files in cwd
tnoremap <F15> <C-\><C-n>:Telescope<CR>
tnoremap <M-C-F3> <C-\><C-n>:Telescope<CR>
nnoremap <F15> :Telescope find_files<CR>
nnoremap <M-C-F3> :Telescope find_files<CR>
" Search for string under cursor in cwd
tnoremap <F16> <C-\><C-n>:Telescope<CR>
tnoremap <M-C-F4> <C-\><C-n>:Telescope<CR>
nnoremap <F16> :Telescope grep_string<CR>
nnoremap <M-C-F4> :Telescope grep_string<CR>
" Search buffers
tnoremap <F17> <C-\><C-n>:Telescope<CR>
tnoremap <M-C-F5> <C-\><C-n>:Telescope<CR>
nnoremap <F17> :Telescope buffers<CR>
nnoremap <M-C-F5> :Telescope buffers<CR>
" Search help tags
tnoremap <F18> <C-\><C-n>:Telescope<CR>
tnoremap <M-C-F6> <C-\><C-n>:Telescope<CR>
nnoremap <F18> :Telescope help_tags<CR>
nnoremap <M-C-F6> :Telescope help_tags<CR>

" Location list toggle
nnoremap <C-x> :LToggle<CR>
" Quickfix list toggle
nnoremap <C-z> :QToggle<CR>

" Run last command
nnoremap <A-;> @:<CR>
" Run last macro
nnoremap <M-.> @@

" Terminal bindings
" Open terminal
nnoremap <M-C-T> :terminal<CR>
" Open terminal split
nnoremap <M-C-V> :split\|:terminal<CR>
" Open terminal vsplit
nnoremap <M-C-S> :vsplit\|:terminal<CR>
" Escape terminal
tnoremap <ESC><ESC> <C-\><C-n>
" Close terminal
tnoremap <M-C-Q> <C-\><C-n> :bp\|bd! #<CR>
" Split terminal buffer vertically
tnoremap <M-C-V> <C-\><C-n> :split\|terminal<CR>
" Split terminal buffer
tnoremap <M-C-S> <C-\><C-n> :vsplit\|terminal<CR>
" Restart process
tnoremap <F5> <C-c><Up><CR>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P

" Yank all file text
nnoremap ya jggVGy<C-o>k

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
inoremap <C-h> <backspace>
inoremap <C-j> <ESC>A
inoremap <C-k> <ESC>I
inoremap <C-l> <delete>
inoremap <C-w> <ESC>wa
inoremap <C-b> <ESC>bi
inoremap <C-e> <ESC>ea
inoremap <C-o> <ESC>o
inoremap <C-p> <ESC>pa

" File Traversal
" Page up/down
nnoremap <S-Up> <C-u>
nnoremap <S-Down> <C-d>
" Line start/end
nnoremap <S-Left> ^
nnoremap <S-Right> $
" Location navigation
nnoremap <A-Left> :lprev<CR>
nnoremap <A-Up> :lfirst<CR>
nnoremap <A-Down> :llast<CR>
nnoremap <A-Right> :lnext<CR>

" Text  manipulation
" Commenting line(s)
nnoremap <C-c> :Commentary<CR>
xnoremap <C-c> :Commentary<CR>
" Swap character
nnoremap <A-h> hdlph
nnoremap <A-l> dlp
" Increment/decrement numbers
nnoremap <A-k> <C-a>
nnoremap <A-j> <C-x>
" Swap lines
nnoremap <M-C-K> <Up>ddp<Up>
nnoremap <M-C-J> ddp
" Change indentation
nnoremap <M-C-H> <<
vnoremap <M-C-H> <
nnoremap <M-C-L> >>
vnoremap <M-C-L> >
" Remap substitute command
nnoremap R s
" Swap case
nnoremap <A-u> ~h
xnoremap <A-u> ~
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap va ggVG
" Format file text
nnoremap <leader>= mfgg=G`f
" Clear search highlighting
nnoremap <M-BS> :let @/=""<CR>
