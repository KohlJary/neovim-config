" --- Keybinds ---
let mapleader = ' '

" Omnisharp mappings
nnoremap <A-[> :OmniSharpNavigateUp<CR>
nnoremap <A-]> :OmniSharpNavigateDown<CR>
nnoremap <A-f> :OmniSharpFindUsages<CR>
nnoremap <A-g> :OmniSharpGotoDefinition split<CR>
nnoremap <A-R> :OmniSharpRestartServer<CR>
nnoremap <leader>oss :OmniSharpStatus<CR>

" NERDTree
nnoremap <C-a> :NERDTreeToggle<CR>:normal =<CR>
nnoremap <CR> :NERDTreeFocus<CR>
nnoremap <A-m> :NERDTreeMirror<CR>
nnoremap <A-{> :let Tlist_Use_Right_Window=1<CR>:let g:NERDTreeWinPos="left"<CR>:NERDTree<CR>:TlistClose<CR>:TlistOpen<CR>
nnoremap <A-}> :let Tlist_Use_Right_Window=0<CR>:let g:NERDTreeWinPos="right"<CR>:NERDTree<CR>:TlistClose<CR>:TlistOpen<CR>

" Taglist
nnoremap <C-t> :TlistOpen<CR>
nnoremap <C-s> :TlistToggle<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>"

" Split operations
" Movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
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
nnoremap <A-i> <C-w>v
nnoremap <A-v> <C-w>s

" Buffer operations
" Close buffer
nnoremap <C-q> :bp\|bd! #<CR>
" Prev/next buffer
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>
" Open current buffer in new tab
nnoremap <C-y> :tabnew<CR>:edit # <CR>

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
nnoremap <A-9> :tabl<CR>

" Fold operations
nnoremap <A-o> za
vnoremap <A-o> zf

" Function keys
" Buffer delete menu
nnoremap <F2> :Bdelete menu<CR>
" Sort lines
xnoremap <F2> :sort<CR>
" Save session
nnoremap <F3> :SaveSession
" Open session
nnoremap <F4> :OpenSession<CR>
" Reload vimrc
nnoremap <F5> :source $MYVIMRC<CR>
" Semicolon shortcut
inoremap <F5> <ESC>A;<ESC>
" Reload CoC
nnoremap <F6> :CocRestart<CR>
" Detect filetype
nnoremap <F10> :filetype detect<CR>
" Plugin install
nnoremap <F12> :PlugInstall<CR>
" F13 test
nnoremap <F13> :echo "F13 works!"<CR>

" Toggle relative numbering
nnoremap <C-w>r :set rnu!<CR>
" Location list toggle
nnoremap <C-x> :LToggle<CR>
" Quickfix list toggle
nnoremap <C-z> :QToggle<CR>
" Git diff quickbind
nnoremap <C-d> :Gdiffsplit<CR>
" Run last command
nnoremap <A-;> @:<CR>

" Terminal bindings
" Open terminal
nnoremap <leader>tt :terminal<CR>
" Open terminal split
nnoremap <leader>ts :split<CR> :terminal<CR>
" Open terminal vsplit
nnoremap <leader>tv :vsplit<CR> :terminal<CR>
" Escape terminal
tnoremap <ESC><ESC> <C-\><C-n>
" Restart process
tnoremap <F5> <C-c><Up><CR>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P

" Paste in region
nnoremap pw viwp
nnoremap p' vi'p
nnoremap p" vi"p
nnoremap p[ vi[p
nnoremap p{ vi{p
nnoremap p( vi(p
nnoremap p< vi<p

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
" Ctrl Backspace behavior
inoremap <A-BS> <C-W>

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
" Swap lines
nnoremap <A-k> <Up>ddp<Up>
nnoremap <A-j> ddp
" Remap substitute command
nnoremap R s
" Swap case
nnoremap <A-u> ~h
xnoremap <A-u> ~
" Increment/decrement numbers
nnoremap <A-a> <C-a>
nnoremap <A-s> <C-x>
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap <leader>sa ggVG
" Format file text
nnoremap <leader>= mfgg=G`f
" Clear search highlighting
nnoremap \ :let @/=""<CR>
