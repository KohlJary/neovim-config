set nocompatible

" --- General Settings ---
" Character encoding
set encoding=utf8
" Sane backspace behavior
set backspace=indent,eol,start
" Use system clipboard
set clipboard+=unnamedplus
" Big history energy
set history=1000
" Save marks
set viminfo='1000,f1
" Line/sign number display
set ruler
set number
set signcolumn=yes
" Highlight the current line number
set cursorline
set cursorlineopt=both
" No line wrapping because it's the devil
set nowrap
" Command output display
set showcmd
set cmdheight=2
" Line offset to scroll through the file
set scrolloff=3
" Fold method, consider switching to syntax
set foldmethod=syntax
" Search stuff?
set incsearch
set hlsearch
" I actually don't know what this does
set wildmenu
" Mouse support, look into options
set mouse=a
" Split direction
set splitbelow
set splitright
" ???
set hidden
" Syntax highlighting
syntax on
" Ensure cwd matches terminal cwd
"set autochdir
" Disable automatic window resizing?
set noea

" Indenting
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Folding
augroup vimrc
  autocmd BufReadPre * setlocal foldmethod=syntax
  autocmd BufEnter * if &fdm == 'syntax' | setlocal foldmethod=manual | endif
augroup END

" Sessions
" Don't save hidden and unloaded buffers
set sessionoptions-=buffers
" Don't save help windows
set sessionoptions-=help
" Don't save terminal buffers
set sessionoptions-=buffers

" Terminal
augroup neovim_terminal
  " Set filetype for terminal buffers for detection
  autocmd TermOpen * silent! set filetype=terminal
  " Disable line numbers for terminal buffers
  autocmd TermOpen * setlocal nonumber norelativenumber
  " Make sure line numbers are disabled for terminal buffers
  autocmd BufEnter * if &buftype ==# 'terminal' | setlocal nonumber norelativenumber | endif
  " Enter terminal buffer on focus
  autocmd BufEnter * if &buftype ==# 'terminal' | :startinsert | endif
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
" Abbreviations
source $VIMDIR/config/abbreviations.vim

" Status Line
set showtabline=2
set statusline=
set statusline+=%m%#PmenuSel#%{%SyntasticStatuslineFlag()%}%*
set statusline+=\ w:%{winnr()}\ b:%n\ %l:%c
set statusline+=\ %p%%
set statusline+=%=
set statusline+=%0*\ %{get(b:,'vista_nearest_method_or_function','')}\ 
set statusline+=\ %t
set laststatus=2

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
  autocmd BufRead,BufEnter * filetype detect 
  " Tabwidth by filetype
  autocmd FileType cs setlocal ts=4 sts=4 sw=4
augroup END

" Automatic relative line numbering
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" Resize buffer to fit contents
" augroup SizeSplitToLines
"   autocmd!
"   autocmd BufEnter * call SizeSplitToLines()
" augroup END

" --- OS Specific Tweaks
if (g:detected_os == 'WINDOWS')
  " Use Powershell for terminal buffers
  set shell=powershell.exe
endif

" Reload the colorscheme
color srcery
" call ColorTweaks()
