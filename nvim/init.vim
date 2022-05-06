set runtimepath^=~/.config/nvim runtimepath+=~/.config/nvim/after
source ~/.config/nvim/plug.vim
let &packpath = &runtimepath
let g:vimrc = '~/.config/nvim/.vimrc'
:lua require('lsp')
source ~/.config/nvim/.vimrc
