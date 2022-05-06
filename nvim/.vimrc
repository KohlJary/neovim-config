set nocompatible

" --- General Settings ---
set backspace=indent,eol,start
set clipboard+=unnamedplus
set history=1000
set ruler
set cursorline
set number
set showcmd
set foldmethod=manual
set cmdheight=3
set scrolloff=3
set incsearch
set hlsearch
set nowrap
set encoding=utf8
set wildmenu
set mouse=a
set splitbelow
set splitright
syntax on

" --- Plugins ---
call plug#begin('~/.config/nvim/plugged')
" Theming/Colors
Plug 'lifepillar/vim-solarized8'
Plug 'sheerun/vim-wombat-scheme'
Plug 'srcery-colors/srcery-vim'
" Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" Buffers
Plug 'Asheq/close-buffers.vim'
" UI
Plug 'scrooloose/nerdtree'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'
Plug 'Valloric/ListToggle'
" File management
Plug 'junegunn/fzf.vim'
" Text Manipulation
Plug 'townk/vim-autoclose'
Plug 'unblevable/quick-scope'
Plug 'ggandor/lightspeed.nvim'
Plug 'tpope/vim-commentary'
" Language processing
Plug 'vim-syntastic/syntastic'
Plug 'neovim/nvim-lspconfig'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
" C#
Plug 'OmniSharp/omnisharp-vim'
"HLSL
Plug 'beyondmarc/hlsl.vim'
" Icons
Plug 'ryanoasis/vim-devicons'
" Tags
Plug 'yegappan/taglist'
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

" Syntastic
let g:syntastic_stl_format = "%#airline_error#%E{[!]}%#airline_warning#%W{[?]}"
let g:syntastic_cs_checkers = ['code_checker']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" CoC
let g:coc_global_extensions = ['coc-omnisharp', 'coc-tsserver', 'coc-angular', 'coc-json']
source $HOME/.config/nvim/coc/coc-user-config.vim

" Taglist
nnoremap <C-t> :TlistOpen<CR>
nnoremap <C-s> :TlistToggle<CR>
let g:Tlist_Show_One_File=1
command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*');
let g:gutentags_generate_on_new=1
let g:gutentags_generate_on_missing=1
let g:gutentags_generate_on_write=1
let g:gutentags_generate_on_empty_buffer=0
let g:gutentags_ctags_extra_args=['--tag-relative=yes','--fields=+ailmnS']

" Tab Line
set showtabline=2
" Status Line
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{%SyntasticStatuslineFlag()%}%#airline_tabmod_unsel#%m%*
set statusline+=%=
set statusline+=%0*\ %{get(b:,'coc_current_function','')}\ \|\ %t

" Airline
let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'
let g:airline_solarized_bg='dark'
function! AirlineInit()
  let g:airline_symbols.linenr=' ☰ '
  let g:airline_symbols.maxlinenr=''
  let g:airline_symbols.colnr=' ㏇'
  let spc=g:airline_symbols.space
  let pipe=' | '
  let g:airline#extensions#coc#show_coc_status=1
  let g:airline#extensions#syntastic#stl_format_warn='%W{[?]%fw|%w}'
  let g:airline#extensions#syntastic#stl_format_err='%E{[!]%fe|%e}'
  "Layout
  let g:airline_section_c = airline#section#create_left(['%t','readonly','coc_current_function'])
  let g:airline_section_gutter = airline#section#create(['%='])
  let g:airline_section_x = airline#section#create_right(['omnisharp'])
  let g:airline_section_error = airline#section#create(['syntastic-err'])
  let g:airline_section_warning = airline#section#create(['syntastic-warn'])
endfunction
augroup AirlineCustom
  autocmd!
  autocmd VimEnter * call AirlineInit()
augroup END
" End Airline

" Colors
set background=dark
colorscheme srcery
if has('nvim') || has('termguicolors')
set termguicolors
endif
hi clear CursorLine

" Indenting
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Keybinds
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
nnoremap <C-a> :NERDTreeMirror<CR>:NERDTreeToggle <CR>
nnoremap <CR> :NERDTreeMirror<CR>:NERDTreeFocus <CR>
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
nnoremap <C-q> :bp\|bd #<CR>
" Buffer delete menu
nnoremap <C-b> :Bdelete menu<CR>
" Prev/next buffer
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>

" Tab operations
nnoremap <A-t> :tabnew<CR>
nnoremap <A-q> :tabclose<CR>
nnoremap <A-p> :tabp<CR>
nnoremap <A-n> :tabn<CR>
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
nnoremap <F2> :sort<CR>
" Edit vimrc
nnoremap <F3> :e ~/.config/nvim/.vimrc<CR>
" Tab width
nnoremap <F4> :set tabstop=4<CR>:set softtabstop=4<CR>:set shiftwidth=4<CR>
" Reload vimrc
nnoremap <F5> :source $MYVIMRC<CR> :source ~/.config/nvim/.vimrc<CR>
" Open terminal
nnoremap <F8> :terminal<CR>
" Open terminal split
nnoremap <F9> :split<CR> :terminal<CR>
" Plugin install
nnoremap <F12> :source $MYVIMRC<CR> :source ~/.config/nvim/.vimrc<CR> :PlugInstall<CR>

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
tnoremap <esc> <C-\><C-n>
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

"Text  manipulation
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

" Custom commands
command -nargs=1 WLine :normal oConsole.WriteLine(<args>);<esc>$
command -nargs=1 Log :normal oDebug.Log(<args>);<esc>$
command -nargs=1 GetComp :normal a(<args>)gameObject.GetComponent<<args>>();<esc>
command -nargs=1 For :normal ofor(int i = 0; i < <args>; i++)<CR>{<CR><CR>}<esc>k
command Serial :normal ^i[SerializeField] <esc>$
