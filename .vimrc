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
" set autochdir
" Disable automatic window resizing?
set noea
set noshellslash

" Indenting
filetype plugin indent on
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set fileformat=unix

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
" Toggle script
source $VIMDIR/config/toggle.vim
" Commands
source $VIMDIR/config/commands.vim
" Keybinds
source $VIMDIR/config/keybinds.vim
" Abbreviations
source $VIMDIR/config/abbreviations.vim

function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction

" Status Line
set showtabline=2
set statusline=
set statusline+=\ w:%{winnr()}\ b:%n\ %l:%c
set statusline+=\ %p%%
set statusline+=%=
set statusline+=%0*
set statusline+=%{LspStatus()}\ \ %t
set laststatus=2

" Colors
set background=dark
colorscheme srcery
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Cursor
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
 \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
 \,sm:block-blinkwait175-blinkoff150-blinkon175

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
  autocmd FileType scss setlocal ts=4 sts=4 sw=4
  autocmd FileType ts setlocal ts=4 sts=4 sw=4
  autocmd FileType tsx setlocal ts=4 sts=4 sw=4
  autocmd FileType json setlocal ts=2 sts=2 sw=2
  " Load .csproj/.sln files on launch
  " autocmd FileType cs argadd **/*.csproj **/*.sln
augroup END

" --- OS Specific Tweaks
if (g:detected_os == 'WINDOWS')
  " Use Powershell for terminal buffers
  set shell=powershell.exe
endif

" Reload the colorscheme
color srcery
call ColorTweaks()

augroup ColorTweaks
  autocmd VimEnter * call ColorTweaks()
augroup END
