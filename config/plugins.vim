" --- Plugins ---

" Load vim-plug plugins
call plug#begin($VIMDIR.'/plugged')
  Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}
  " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" --- Autoinstall Missing Plugins ---
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif

" --- Plugin Configuration ---

" vim-prosession
let g:prosession_per_branch=1
let g:prosession_branch_cmd='git rev-parse --abbrev-ref HEAD'
let g:prosession_on_startup=0
let g:prosession_dir = '~/vimfiles/sessions/'

" Airline
" Weird bug
let g:airline_statusline_ontop=1
let g:airline_powerline_fonts=1
let g:airline_theme='srcery'
let g:airline_solarized_bg='dark'
let g:datetime = strftime("%H:%M %m/%d")
function! AirlineInit()
  let g:airline_symbols.linenr=' ☰ '
  let g:airline_symbols.maxlinenr=''
  let g:airline_symbols.colnr=' ㏇'
  let spc=g:airline_symbols.space
  let pipe=' | '
  "Layout
  let g:airline_section_b = airline#section#create_left(["T: %{tabpagenr()}/%{tabpagenr('$')}", 'branch'])
  let g:airline_section_gutter = airline#section#create(['%=','%{g:datetime}','%='])
  let g:airline_section_x = airline#section#create_right(["%{ObsessionStatus()}"])
endfunction
" Datetime timer
let datetime_timer = timer_start(60000, 'UpdateDatetime',{'repeat': -1})
function! UpdateDatetime(timer)
  let g:datetime = strftime("%H:%M %m/%d")
endfunction
augroup AirlineCustom
  autocmd!
  autocmd VimEnter * call AirlineInit()
augroup END
" End Airline

" Vimspector
let g:vimspector_base_dir='C:\Users\kohlbern.jary\AppData\Local\nvim-data\site\pack\packer\start\vimspector'

" Commentary
autocmd FileType cs setlocal commentstring=//\ %s
