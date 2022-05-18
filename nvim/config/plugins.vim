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
Plug 'liuchengxu/vista.vim'
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
let g:coc_global_extensions = ['coc-omnisharp', 'coc-tsserver', 'coc-angular', 'coc-json', 'coc-sql', 'coc-vimlsp']
source $VIMDIR/config/coc-user-config.vim

" Vista
let g:vista_default_executive = 'coc'
let g:vista_sidebar_position="vertical topleft"
function! VistaNearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
augroup VistaAutocommands
  autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
augroup END

" NERDTree
au VimEnter * NERDTree | wincmd p
let NERDTreeIgnore=['\Session.vim$','\.meta$','\.shadergraph','\.shadervariants','\.asmdef$']
let g:NERDTreeWinPos='right'
let g:NERDTreeMinimalUI=1
let g:NERDTreeMinimalMenu=1
let g:NERDTreeHighlightCursorLine=1
let g:NERDTreeQuitOnOpen=1

augroup NERDTree
  autocmd FileType nerdtree setlocal cursorline signcolumn=no
augroup END

" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

function! NERDTreeSyncFocus()
  call SyncTree()
  NERDTreeFocus
endfunction

" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()

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
let g:datetime = strftime("%I:%M %p, %a %b %d, %Y")
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
  let g:airline_section_c = airline#section#create_left(["Tab: %{tabpagenr()}/%{tabpagenr('$')}"])
  let g:airline_section_gutter = airline#section#create(['%=','%{g:datetime}','%='])
  let g:airline_section_x = airline#section#create_right(['%{VistaNearestMethodOrFunction()}','','omnisharp'])
  let g:airline_section_error = airline#section#create(['syntastic-err'])
  let g:airline_section_warning = airline#section#create(['syntastic-warn'])
endfunction
" Datetime timer
let datetime_timer = timer_start(60000, 'UpdateDatetime',{'repeat': -1})
function! UpdateDatetime(timer)
  let g:datetime = strftime("%I:%M %p, %a %b %d, %Y")
endfunction
augroup AirlineCustom
  autocmd!
  autocmd VimEnter * call AirlineInit()
  autocmd User AirlineAfterTheme call s:update_highlights()
augroup END
" End Airline
