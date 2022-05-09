" --- Keybinds ---
let mapleader = ' '

" Omnisharp mappings
nnoremap <A-[> :OmniSharpNavigateUp<CR>
nnoremap <A-]> :OmniSharpNavigateDown<CR>
nnoremap <A-s> :OmniSharpFindUsages<CR>
nnoremap <A-g> :OmniSharpGotoDefinition split<CR>
nnoremap <A-R> :OmniSharpRestartServer<CR>
nnoremap <leader>oss :OmniSharpStatus<CR>

" NerdTree
au VimEnter * NERDTree
let NERDTreeIgnore=['\Session.vim$','\.meta$','\.shadergraph','\.shadervariants','\.asmdef$']
let g:NERDTreeWinPos='right'
nnoremap <C-a> :NERDTreeToggle<CR>:normal =<CR>
nnoremap <CR> :NERDTreeFocus<CR>
nnoremap <A-m> :NERDTreeMirror<CR>
nnoremap <A-{> :let Tlist_Use_Right_Window=1<CR>:let g:NERDTreeWinPos="left"<CR>:NERDTree<CR>:TlistClose<CR>:TlistOpen<CR>
nnoremap <A-}> :let Tlist_Use_Right_Window=0<CR>:let g:NERDTreeWinPos="right"<CR>:NERDTree<CR>:TlistClose<CR>:TlistOpen<CR>

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
" Buffer delete menu
nnoremap <C-b> :Bdelete menu<CR>
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
set viewdir=~/.vim/views
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview

" Session operations
nnoremap <A-w> :SaveSession<CR>
nnoremap <A-W> :SaveSession 
nnoremap <A-e> :OpenSession<CR>

" Function keys
" Tab width
nnoremap <F2> :set tabstop=2<CR>:set softtabstop=2<CR>:set shiftwidth=2<CR>
" Sort lines
xnoremap <F2> :sort<CR>
" Edit vimrc
if (g:detected_os == 'WINDOWS')
  nnoremap <F3> :e $HOME/AppData/Local/nvim/.vimrc<CR>
elseif (g:detected_os == 'LINUX')
  nnoremap <F3> :e ~/.config/nvim/.vimrc<CR>
endif
" Tab width
nnoremap <F4> :set tabstop=4<CR>:set softtabstop=4<CR>:set shiftwidth=4<CR>
" Reload vimrc
nnoremap <F5> :source $MYVIMRC<CR>
" Semicolon shortcut
inoremap <F5> <ESC>A;<ESC>
" Open terminal
nnoremap <F8> :terminal<CR>
" Open terminal split
nnoremap <F9> :split<CR> :terminal<CR>
" Plugin install
nnoremap <F12> :source $MYVIMRC<CR> :PlugInstall<CR>

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
" Escape terminal
tnoremap <ESC><ESC> <C-\><C-n>
tnoremap <F12> <C-\><C-n>
" Restart process
tnoremap <F5> <C-c><Up><CR>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P

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
nnoremap <leader>k <Up>ddp<Up>
nnoremap <leader>j ddp
" Remap substitute command
nnoremap R s
" Swap case
nnoremap <A-u> ~h
xnoremap <A-u> ~
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap <A-a> ggVG
" Format file text
nnoremap <A-f> mfgg=G`f
" Clear search highlighting
nnoremap \ :let @/=""<CR>
