" Leader keys
source $VIMDIR/config/keybinds/leader.vim
" Function keys
source $VIMDIR/config/keybinds/f-keys.vim

" Terminal bindings
" Escape terminal
tnoremap <Esc><Esc> <C-\><C-n>
tnoremap <leader><Esc> <C-\><C-n>

" Split operations
" Movement
nnoremap <silent> <C-h> <C-w>h
tnoremap <silent> <C-h> <Cmd>wincmd h<CR>
nnoremap <silent> <C-j> <C-w>j
tnoremap <silent> <C-j> <Cmd>wincmd j<CR>
nnoremap <silent> <C-k> <C-w>k
tnoremap <silent> <C-k> <Cmd>wincmd k<CR>
nnoremap <silent> <C-l> <C-w>l
tnoremap <silent> <C-l> <Cmd>wincmd l<CR>

" Resizing
nnoremap <C-Left> <C-w><
tnoremap <C-Left> <C-\><C-n><C-w><i
nnoremap <C-Right> <C-w>>
tnoremap <C-Right> <C-\><C-n><C-w>>i
nnoremap <C-Up> <C-w>+
tnoremap <C-Up> <C-\><C-n><C-w>+i
nnoremap <C-Down> <C-w>-
tnoremap <C-Down> <C-\><C-n><C-w>-i

" Clone splits
nnoremap <M-o> :vsp<CR>
nnoremap <M-u> :sp<CR>

" Close buffer
nnoremap <C-q> :bp\|bd! #<CR>

" Tab operations
" New tab
nnoremap <C-t> :tabnew<CR>
tnoremap <C-t> <C-/><C-n><cmd>tabnew<CR>
" Open current buffer in new tab
nnoremap <silent> <C-e> :tabnew\|e #<CR>
" Close tab
nnoremap <C-w> :tabclose<CR>
" Previous tab
nnoremap <C-p> :tabp<CR>
tnoremap <C-p> <C-/><C-n><cmd>tabp<CR>
" Next tab
nnoremap <C-n> :tabn<CR>
tnoremap <C-n> <C-/><C-n><cmd>tabn<CR>

" Fold operations
vnoremap <C-f> zf
" Close all folds then open one fold level
nnoremap <C-f> zMzo
" Toggle folds
nnoremap <Space> :ToggleFoldRecursive<CR>

" Neotree/Lazygit
nnoremap <silent> <BS> :Neotree float toggle<cr>
nnoremap <silent> <M-BS> <cmd>Telescope live_grep<cr>
nnoremap <silent> <Del> <cmd>Neotree buffers float toggle<cr>
nnoremap <silent> <M-Del> <cmd>Telescope find_files<cr>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ` xi``<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P
xnoremap < xi<><ESC>P

" In next/last parentheses
onoremap i( :<c-u>normal! f(vi(<cr>
onoremap I( :<c-u>normal! F(vi(<cr>
" In next/last bracket
onoremap i[ :<c-u>normal! f[vi[<cr>
onoremap I[ :<c-u>normal! F[vi[<cr>
" In next/last brace
onoremap i{ :<c-u>normal! f{vi{<cr>
onoremap I{ :<c-u>normal! F{vi{<cr>
" In next/last angle bracket
onoremap i< :<c-u>normal! f<vi<<cr>
onoremap I< :<c-u>normal! F<vi<<cr>
" In next/last single quote
onoremap i' :<c-u>normal! f'vi'<cr>
onoremap I' :<c-u>normal! F'vi'<cr>
" In next/last double quote
onoremap i" :<c-u>normal! f"vi"<cr>
onoremap I" :<c-u>normal! F"vi"<cr>
" In next/last backtick
onoremap i` :<c-u>normal! f`vi`<cr>
onoremap I` :<c-u>normal! F`vi`<cr>

" Yank all file text
nnoremap ya mQggyG`Q:delm Q<CR><cmd>echo "Yank All"<cr>

" Paste in region
nnoremap pw viwp
nnoremap p' vi'p
nnoremap p" vi"p
nnoremap p[ vi[p
nnoremap p{ vi{p
nnoremap p( vi(p
nnoremap p< vi<p
" Paste overwriting all
nnoremap pa ggVGp<C-o>
" Paste overwriting line
nnoremap pl Vp
" Quick paste
nnoremap pp p

" Rerun last command
" nnoremap <silent> + @:<cr>
" Rerun last macro
nnoremap <silent>  @@

" Inline comment at EOL
nnoremap <leader>c A //
inoremap <leader>c <End><Space>//<Space>
" Swap case of next character
inoremap <C-s> <Esc>l~hi
" Ctrl backspace/delete behavior
inoremap <C-BS>  <C-w>
inoremap <M-BS>  <C-w>
inoremap <M-Del> <C-o>de
" inoremap <C-w> <ESC>wa
inoremap <C-Left> <ESC>bi
inoremap <C-Right> <ESC>ea
inoremap <C-u> <ESC>O
inoremap <C-o> <ESC>o
inoremap <C-p> <ESC>pa
" Select to beginning/end of line from insert mode
inoremap <S-Home> <ESC>v^
inoremap <S-End> <ESC>lv$

" Swap lines
nnoremap <Up> ddkP
nnoremap <Down> ddp
" Change indentation
nnoremap <Left> <<
xnoremap <Left> <
nnoremap <Right> >>
xnoremap <Right> >

nnoremap <silent> < <cmd>lua vim.diagnostic.goto_prev()<cr>
nnoremap <silent> > <cmd>lua vim.diagnostic.goto_next()<cr>

" Text  manipulation
" Undo
nnoremap <C-z> u
" Redo
nnoremap <S-u> <C-r>
nnoremap <C-y> <C-r>
" Commenting line(s)
nnoremap <C-c> :Commentary<CR>
xnoremap <C-c> :Commentary<CR>
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap va ggVG
" Quick macro
nnoremap = @g
nnoremap + qg
" Delete/change until space
nnoremap d<Space> dt<Space>
nnoremap c<Space> ct<Space>

" Remap <C-w>
nnoremap <M-w> <C-w>

" Remap =
nnoremap <M-=> =
