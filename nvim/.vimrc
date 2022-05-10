set nocompatible

" --- General Settings ---
set backspace=indent,eol,start
set clipboard+=unnamedplus
set history=1000
set ruler
set cursorline
set number
set signcolumn=yes
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

" Indenting
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Status Line
set showtabline=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{%SyntasticStatuslineFlag()%}%#airline_tabmod_unsel#%m%*
set statusline+=%=
set statusline+=%0*\ %{get(b:,'coc_current_function','')}\ \|\ %t
set laststatus=2

" Terminal
augroup neovim_terminal
  " Set filetype for terminal buffers for detection
  autocmd TermOpen * silent! set filetype=terminal
  " Disable line numbers for terminal buffers
  autocmd TermOpen * setlocal nonumber norelativenumber
  " Start in insert mode on opening terminal
  autocmd TermOpen * startinsert
augroup END

" --- Source Files ---
" Plugins
source $VIMDIR/config/plugins.vim
" Keybinds
source $VIMDIR/config/keybinds.vim
" Commands
source $VIMDIR/config/commands.vim

" Colors
set background=dark
colorscheme srcery
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" View commands
set viewdir=$VIMDIR/views
augroup ViewCommands
  autocmd!
  autocmd BufWinLeave *.* mkview!
  autocmd BufWinEnter *.* silent! loadview
augroup END

" Filetype detection
augroup FileTypeDetection
  autocmd!
  " Ensure filetype detection on opening buffer
  autocmd BufReadPre * filetype detect 
  " Tabwidth by filetype
  autocmd FileType cs setlocal ts=4 sts=4 sw=4
augroup END

