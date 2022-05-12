" --- Plugins ---

" Load vim-plug plugins
call plug#begin($VIMDIR.'/plugged')
" Theming/Colors
Plug 'lifepillar/vim-solarized8'
Plug 'sheerun/vim-wombat-scheme'
Plug 'srcery-colors/srcery-vim'
" Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" Buffers
Plug 'Asheq/close-buffers.vim'
" Terminal
Plug 'akinsho/toggleterm.nvim'
" UI
Plug 'scrooloose/nerdtree'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'
Plug 'Valloric/ListToggle'
" File management
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do':'make'}
Plug 'nvim-treesitter/nvim-treesitter', {'do':':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
" Text Manipulation
Plug 'townk/vim-autoclose'
Plug 'unblevable/quick-scope'
Plug 'ggandor/lightspeed.nvim'
Plug 'tpope/vim-commentary'
Plug 'kburdett/vim-nuuid'
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

" --- Plugin Configuration ---

" Syntastic
let g:syntastic_stl_format = "%#airline_error#%E{[!]}%#airline_warning#%W{[?]}"
let g:syntastic_cs_checkers = ['code_checker']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" CoC
let g:coc_global_extensions = ['coc-omnisharp', 'coc-tsserver', 'coc-angular', 'coc-json', 'coc-sql']
source $VIMDIR/config/coc-user-config.vim

" NERDTree
au VimEnter * NERDTree
let NERDTreeIgnore=['\Session.vim$','\.meta$','\.shadergraph','\.shadervariants','\.asmdef$']
let g:NERDTreeWinPos='right'
let g:NERDTreeHighlightCursorLine=1
augroup NERDTree
  autocmd FileType nerdtree setlocal cursorline signcolumn=no
augroup END

" Taglist
let g:Tlist_Show_One_File=1
command GutentagsClearCache :call system('rm ' . g:gutentags_cache_dir . '/*')
let g:gutentags_define_advanced_commands=1
let g:gutentags_generate_on_new=1
let g:gutentags_generate_on_missing=1
let g:gutentags_generate_on_write=1
let g:gutentags_generate_on_empty_buffer=0
let g:gutentags_ctags_extra_args=['--tag-relative=yes','--fields=+ailmnS']

" Airline
" Weird bug
call airline#extensions#tabline#buffers#invalidate()
let g:airline_statusline_ontop=1
let g:airline#extensions#coc#enabled=1
let g:airline#extensions#coc#show_coc_status=1
let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_powerline_fonts=1
let g:airline_theme='srcery'
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
  let g:airline_section_b = airline#section#create_left(['hunks', 'branch',])
  let g:airline_section_c = airline#section#create_left(["Tab: %{tabpagenr()}/%{tabpagenr('$')}",'coc_current_function'])
  let g:airline_section_gutter = airline#section#create(['%='])
  let g:airline_section_x = airline#section#create_right(['coc_current_function',' | ','omnisharp'])
  let g:airline_section_error = airline#section#create(['syntastic-err'])
  let g:airline_section_warning = airline#section#create(['syntastic-warn'])
endfunction
function! s:update_highlights()
  hi CursorLine ctermfg=Yellow guifg=Yellow
endfunction
augroup AirlineCustom
  autocmd!
  autocmd VimEnter * call AirlineInit()
  autocmd User AirlineAfterTheme call s:update_highlights()
augroup END
" End Airline
