set nocompatible

" --- General Settings ---
set backspace=indent,eol,start
set clipboard+=unnamedplus
set history=1000
set ruler
set nocursorline
set number
set signcolumn=yes
set showcmd
set foldmethod=manual
set cmdheight=2
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
" Commands
source $VIMDIR/config/commands.vim
" Keybinds
source $VIMDIR/config/keybinds.vim

" Status Line
set showtabline=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{%SyntasticStatuslineFlag()%}%#airline_tabmod_unsel#%m%*
set statusline+=\ %l:%c
set statusline+=\ %p%%
set statusline+=%=
set statusline+=%0*\ %{get(b:,'vista_nearest_method_or_function','')}\ \|\ %t
set laststatus=2

" Colors
set background=dark
colorscheme srcery
if has('nvim') || has('termguicolors')
  set termguicolors
endif
let g:srcery_bg_passthrough=0
hi CursorLine ctermfg=Yellow guifg=Yellow
" hi Cursor ctermbg=Magenta ctermfg=Cyan guibg=Magenta guifg=Cyan

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

" --- OS Specific Tweaks
if (g:detected_os == 'WINDOWS')
  " Use Windows Terminal BG Transparency
  let g:srcery_bg_passthrough=1
  " Use Powershell for terminal buffers
  set shell=powershell.exe
endif

" Reload the colorscheme
color srcery
hi CursorLine ctermfg=Yellow guifg=Yellow
