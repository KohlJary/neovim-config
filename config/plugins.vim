" --- Plugins ---

" Load vim-plug plugins
call plug#begin($VIMDIR.'/plugged')
  Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" --- Autoinstall Missing Plugins ---
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif

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
let g:AutoClosePreserveDotReg = 0

" NERDTree
" au VimEnter * NERDTree | wincmd p
let NERDTreeIgnore=['\Session.vim$','\.meta$','\.shadergraph','\.shadervariants','\.asmdef$']
let g:NERDTreeWinPos='left'
let g:NERDTreeMinimalUI=1
let g:NERDTreeMinimalMenu=1
let g:NERDTreeHighlightCursorLine=1
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowHidden=1
let g:NERDTreeCustomOpenArgs={'file': {'reuse': 'currenttab', 'where': 'p'}, 'dir': {}}

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

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Airline
" Weird bug
let g:airline_statusline_ontop=1
let g:airline#extensions#coc#enabled=1
let g:airline#extensions#coc#show_coc_status=1
let g:airline_powerline_fonts=1
let g:airline_theme='srcery'
let g:airline_solarized_bg='dark'
let g:datetime = strftime("%I:%M %p, %a %b %d, %Y")
function! AirlineInit()
  let g:airline_symbols.linenr=' ??? '
  let g:airline_symbols.maxlinenr=''
  let g:airline_symbols.colnr=' ???'
  let spc=g:airline_symbols.space
  let pipe=' | '
  let g:airline#extensions#coc#show_coc_status=1
  let g:airline#extensions#syntastic#stl_format_warn='%W{[?]%fw|%w}'
  let g:airline#extensions#syntastic#stl_format_err='%E{[!]%fe|%e}'
  "Layout
  let g:airline_section_b = airline#section#create_left(['hunks', 'branch',])
  let g:airline_section_c = airline#section#create_left(["Tab: %{tabpagenr()}/%{tabpagenr('$')}"])
  let g:airline_section_gutter = airline#section#create(['%=','%{g:datetime}','%='])
  let g:airline_section_x = airline#section#create_right(['omnisharp'])
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
augroup END
" End Airline
