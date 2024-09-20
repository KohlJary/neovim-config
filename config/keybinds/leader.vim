" Bind , as leader
let mapleader = ","

" Append after word
nnoremap <leader>a ea

" Btop
nnoremap <leader>b <cmd>Btop<cr>
tnoremap <leader>b <cmd>Btop<cr>

" Buffer delete
nnoremap <leader>B <cmd>Bdelete! menu<cr>

" Toggle background transparency
nnoremap <silent> <leader>bg <cmd>SrceryBGToggle<CR>

" Inline comment at EOL
nnoremap <leader>c A //<Space>
" Load CS Projects/Solutions
nnoremap <leader>C <cmd>CSLoadProjects<CR>

" Diagnostic list
nnoremap <leader>d <cmd>lua vim.diagnostic.setloclist()<cr>
" Highlight differences between window buffers
nnoremap <leader>D <cmd>windo diffthis<cr>

" Refresh buffer
nnoremap <leader>E <cmd>e<cr><C-o>

" Format file text
nnoremap <leader>f <cmd>lua vim.lsp.buf.format({ async = true })<cr>

" Lazygit
nnoremap <leader>g <cmd>Lazygit<cr>
tnoremap <leader>g <cmd>Lazygit<cr>
" Insert new UUID
xnoremap <leader>g <Plug>Nuuid
nnoremap <leader>G <Plug>Nuuid

" Clear search highlighting
nnoremap <leader>/ :let @/=""<CR>

" Toggle location list
nnoremap <silent> <leader>l :call ToggleLocationList()<cr>

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

" Rename symbol
nnoremap <leader>r <cmd>lua vim.lsp.buf.rename()<CR>

" WindowSwap
let g:windowswap_map_keys = 0
nnoremap <leader>s <cmd>call WindowSwap#EasyWindowSwap()<CR>
" Sort lines
xnoremap <silent> <leader>s :'<,'>sort<CR>

" ToggleTerm
nnoremap <leader>t <cmd>ToggleTermTab<cr>
tnoremap <leader>t <cmd>ToggleTermTab<cr>
nnoremap <leader>T <cmd>ToggleTermToggleAll<cr>
tnoremap <leader>T <cmd>ToggleTermToggleAll<cr>
" Try/catch
xnoremap <leader>t ditry<cr>{<cr><esc>O<esc>pl

" Twui
nnoremap <leader>u <cmd>Twui<cr>
tnoremap <leader>u <cmd>Twui<cr>

" Vifm
nnoremap <leader>v <cmd>Vifm<cr>

" Word Wrap
nnoremap <leader>w <cmd>setlocal wrap!<cr>

" Toggle boolean/conditional/+-
nnoremap <silent> <leader>x <cmd>call Toggle()<CR>

" Equalize splits
nnoremap <leader>= <C-w>=
nnoremap <leader>+ <cmd>SizeSplitToLines<CR>

" Telescope
nnoremap <leader><Space> <cmd>Telescope<CR>
