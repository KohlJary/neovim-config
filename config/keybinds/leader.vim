" Bind , as leader
let mapleader = "<F24>"
map <M-C-F12> <leader>
tmap <M-C-F12> <leader>
" Bind . as local leader
let maplocalleader="<F23>"
map <M-C-F11> <localleader>
tmap <M-C-F11> <localleader>

" Append after word
nnoremap <leader>a ea

" Btop
nnoremap <localleader>b <cmd>Btop<cr>
tnoremap <localleader>b <cmd>Btop<cr>
" True/false flip
nnoremap <silent> <leader>b <cmd>call Toggle()<cr>

" Buffer delete
nnoremap <leader>B <cmd>Bdelete! menu<cr>

" Toggle background transparency
nnoremap <silent> <leader>bg <cmd>SrceryBGToggle<CR>

" Inline comment at EOL
nnoremap <leader>c A //<Space>
" Load CS Projects/Solutions
nnoremap <leader>C <cmd>CSLoadProjects<CR>

" Diagnostic list
nnoremap <leader>d <cmd>lua vim.diagnostic.open_float()<cr>
" Highlight differences between window buffers
nnoremap <leader>D <cmd>windo diffthis<cr>

" Refresh buffer
nnoremap <leader>E <cmd>e<cr><C-o>

" Telescope file search
nnoremap <silent> <leader>f <cmd>Telescope find_files<cr>
" Format file text
nnoremap <localleader>f <cmd>lua vim.lsp.buf.format({ async = true })<cr>

" Telescope grep cwd
nnoremap <silent> <leader>g <cmd>Telescope live_grep<cr>
" Lazygit
nnoremap <localleader>g <cmd>Lazygit<cr>
tnoremap <localleader>g <cmd>Lazygit<cr>

" Twui
nnoremap <localleader>i <cmd>Twui<cr>
tnoremap <localleader>i <cmd>Twui<cr>

" Toggle location list
nnoremap <silent> <leader>l :call ToggleLocationList()<cr>

" Mason quickload
nnoremap <silent> <localleader>m <cmd>Mason<cr>

" Toggle relative line number
nnoremap <leader>n <cmd>setlocal rnu!<cr>

" Insert empty line below/above
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j

" Prosession Load/Clean/Delete
nnoremap <leader>p  <cmd>Prosession<cr>
nnoremap <leader>pc <cmd>ProsessionClean<cr>
nnoremap <leader>pd <cmd>ProsessionDelete<cr>

" Toggle quickfix
nnoremap <silent> <leader>q :call ToggleQuickFix()<CR>
" Quick close neovim
nnoremap <silent> <leader><C-q> :qa<CR>
" Delete current buffer
nnoremap <localleader>q <cmd>Bdelete<cr>
" Delete all buffers, keep window layout
nnoremap <localleader>Q <cmd>bufdo :Bdelete<cr>

" Rename symbol
nnoremap <leader>r <cmd>lua vim.lsp.buf.rename()<CR>
" Fast find/replace
xnoremap <leader>r y<cmd>let @/=escape(@", '/')<cr>"_cgn

" WindowSwap
let g:windowswap_map_keys = 0
nnoremap <leader>s <cmd>call WindowSwap#EasyWindowSwap()<CR>
" Sort lines
xnoremap <silent> <leader>s :'<,'>sort<CR>

" ToggleTerm
nnoremap <localleader>t <cmd>ToggleTermTab<cr>
tnoremap <localleader>t <cmd>ToggleTermTab<cr>
nnoremap <localleader>T <cmd>ToggleTermToggleAll<cr>
tnoremap <localleader>T <cmd>ToggleTermToggleAll<cr>
" Try/catch
xnoremap <leader>t ditry<cr>{<cr><esc>O<esc>pl

" Insert new UUID
xnoremap <leader>u <Plug>Nuuid
nnoremap <leader>u <Plug>Nuuid

" Vifm
nnoremap <localleader>v <cmd>Vifm<cr>
tnoremap <localleader>v <cmd>Vifm<cr>

" Word Wrap
nnoremap <leader>w <cmd>setlocal wrap!<cr>

" Toggle boolean/conditional/+-
nnoremap <silent> <leader>x <cmd>call Toggle()<CR>

" Quick save buffer
nnoremap <leader>; :w<cr>

" Equalize splits
nnoremap <leader>= <C-w>=
" Resize split to buffer length
nnoremap <localleader>= <cmd>SizeSplitToLines<CR>
" Fix toggle term offset
tnoremap <localleader>= <C-\><C-n>^i

" Clear search highlighting
nnoremap <leader>/ :let @/=""<CR>
" Telescope
nnoremap <localleader>/ <cmd>Telescope<CR>

" Telescope current buffer
nnoremap <leader>- <cmd>Telescope current_buffer_fuzzy_find<CR>

" Goto prev/next diagnostic
nnoremap <leader>[ <cmd>lua vim.diagnostic.goto_prev()<cr>
nnoremap <leader>] <cmd>lua vim.diagnostic.goto_next()<cr>

" Rebind register actions
xnoremap <leader>" "
xnoremap <leader>' '
