" Bind , as leader
let mapleader = ","

" Twui
nnoremap <leader>a <cmd>Twui<cr>
tnoremap <leader>a <cmd>Twui<cr>

" Btop
nnoremap <leader>b <cmd>Btop<cr>
tnoremap <leader>b <cmd>Btop<cr>

" Buffer delete
nnoremap <leader>B <cmd>Bdelete! menu<cr>

" Toggle background transparency
nnoremap <silent> <leader>bg <cmd>SrceryBGToggle<CR>

" Inline comment at EOL
nnoremap <leader>c A //
inoremap <leader>c <End><Space>//<Space>

" Load CS Projects/Solutions
nnoremap <leader>C <cmd>CSLoadProjects<CR>

" Diagnostic list
nnoremap <leader>d <cmd>lua vim.diagnostic.setloclist()<cr>

" Refresh buffer
nnoremap <leader>E <cmd>e<cr><C-o>

" Toggle fold method
nnoremap <leader>f <cmd>call ToggleFoldMethod()<cr>
" Format file text
nnoremap <leader>F mfgg=G`f

" Lazygit
nnoremap <leader>g <cmd>Lazygit<cr>
tnoremap <leader>g <cmd>Lazygit<cr>
" Insert new UUID
inoremap <leader>g <Plug>Nuuid
xnoremap <leader>g <Plug>Nuuid

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

" Toggle quickfix<S-F10>
nnoremap <silent> <leader>q :call ToggleQuickFix()<CR>

" Equalize splits
nnoremap <leader>r <C-w>=
nnoremap <leader>R <cmd>SizeSplitToLines<CR>
nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>

" New splits
nnoremap <leader>s :vnew<CR>
nnoremap <leader>S :new<CR>
" Sort lines
xnoremap <silent> <leader>s <cmd>sort<CR>

" ToggleTerm
nnoremap <leader>t <cmd>ToggleTermTab<cr>
tnoremap <leader>t <cmd>ToggleTermTab<cr>
nnoremap <leader>T <cmd>ToggleTermToggleAll<cr>
tnoremap <leader>T <cmd>ToggleTermToggleAll<cr>

" Toggle boolean/conditional/+-
nnoremap <silent> <leader>T <cmd>call Toggle()<CR>

" Search for unicode character
inoremap <leader>u <esc>:UnicodeSearch! 

" Word Wrap
nnoremap <leader>w <cmd>setlocal wrap!<cr>

" Window Swap
let g:windowswap_map_keys = 0
nnoremap <silent> <leader>y <cmd>call WindowSwap#EasyWindowSwap()<CR>

" Remap =
nnoremap <leader>= =
