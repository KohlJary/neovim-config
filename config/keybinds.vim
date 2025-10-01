" Leader keys
source $VIMDIR/config/keybinds/leader.vim
" Function keys
source $VIMDIR/config/keybinds/f-keys.vim

" Terminal bindings
" Escape terminal
tnoremap <Esc><Esc> <C-\><C-n>
tnoremap <localleader><Esc> <C-\><C-n>

noremap < <C-o>
noremap << <C-o>
noremap > <C-i>

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

" Close buffer
" nnoremap <C-q> :bp\|bd! #<CR>

" Tab operations
" New tab
nnoremap <C-t> <cmd>tabnew<CR><cmd>Neotree filesystem left focus<cr>
" Close tab
nnoremap <C-q> :tabclose<CR>
" Previous tab
nnoremap <C-p> :tabp<CR>
tnoremap <C-p> <C-/><C-n><cmd>tabp<CR>
" Next tab
nnoremap <C-n> :tabn<CR>
tnoremap <C-n> <C-/><C-n><cmd>tabn<CR>

" Close all folds then open one fold level
nnoremap <C-f> zMzo
" Toggle folds
nnoremap x :ToggleFoldRecursive<CR>
" Toggle fold method
nnoremap X <cmd>call ToggleFoldMethod()<cr>

nnoremap s      <cmd>lua MiniJump2d.start({ allowed_lines = { cursor_before = false, cursor_after = true } })<cr>
nnoremap ss     <cmd>lua MiniJump2d.start({ allowed_lines = { cursor_before = false, cursor_after = true } })<cr>
nnoremap S      <cmd>lua MiniJump2d.start({ allowed_lines = { cursor_before = true, cursor_after = false } })<cr>
nnoremap <C-s>  <cmd>lua MiniJump2d.start()<cr>

" Quick save
nnoremap  <cmd>w<cr>

" WindowSwap
let g:windowswap_map_keys = 0

" Neotree
nnoremap <silent> <BS> <cmd>Neotree left filesystem reveal toggle<cr>
nnoremap <silent> <Del> <cmd>Neotree top buffers reveal toggle<cr>
nnoremap <silent> = <cmd>Neotree right document_symbols focus<cr>
nnoremap <silent> + <cmd>Neotree right document_symbols toggle<cr>

" LSP hover
nnoremap <Space> <cmd>lua vim.lsp.buf.hover()<cr>

" LSP format
nnoremap <silent> <C-f> <cmd>lua vim.lsp.buf.format()<CR>

" LSP rename
nnoremap <silent> <C-r> <cmd>lua vim.lsp.buf.rename()<CR>

" LSP Diagnostic goto/list
nnoremap <silent> <CR> <cmd>lua vim.diagnostic.goto_next()<cr>
nnoremap <silent> <S-CR> <cmd>lua vim.diagnostic.goto_prev()<cr>
nnoremap <silent> <C-CR> <cmd>lua vim.diagnostic.open_float()<cr>

" Next/prev document symbol
nnoremap <Tab> ]m
nnoremap <S-Tab> [m

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
" Delete all file text
nnoremap da ggVGd

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

" Location List
nnoremap <silent> glo :copen<cr>
nnoremap <silent> glc :cclose<cr>
nnoremap <silent> glf :cfirst<cr>
nnoremap <silent> gll :clast<cr>
nnoremap <silent> gln :cn<cr>
nnoremap <silent> glp :cp<cr>

" Rerun last command
nnoremap <silent> <M-Del> @:<cr>
xnoremap <silent> <M-Del> @:<cr>
" Rerun last macro
nnoremap <silent> <M-BS> @@

" Swap case of next character
inoremap <C-s> <Esc>l~hi
" Ctrl backspace/delete behavior
inoremap <M-BS>  <C-w>
inoremap <M-Del> <C-o>de
" inoremap <C-w> <ESC>wa
inoremap <C-Left> <ESC>bi
inoremap <C-Right> <ESC>ea
" EOL comment
inoremap <C-c> <End><Space>//<Space>
" Toggle script
" inoremap <C-f> <C-o>:call Toggle()<cr>
" Insert new UUID
inoremap <C-g> <Plug>Nuuid
" Search for unicode character
inoremap <C-u> <esc>:UnicodeSearch!<cr>
inoremap <C-p> <ESC>pa
" Select to beginning/end of line from insert mode
inoremap <S-Home> <ESC>v^
inoremap <S-End> <ESC>lv$

" Text  manipulation
" Redo
nnoremap <S-u> <C-r>
" Commenting line(s)
nnoremap <C-c> :Commentary<CR>
xnoremap <C-c> :Commentary<CR>
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap va ggVG
" Quick inc/dec
xnoremap a <C-a>
xnoremap aa <C-a>
xnoremap x <C-x>

" Remap <C-w>
nnoremap <M-w> <C-w>

" Remap =
nnoremap <M-=> =

" Remap q
nnoremap <C-q> q
