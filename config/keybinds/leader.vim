" Bind , as leader
let mapleader = ","

" Buffer delete
nnoremap <leader>b <cmd>Bdelete! menu<cr>

" Toggle background transparency
nnoremap <silent> <leader>bg <cmd>SrceryBGToggle<CR>

" Diagnostic list
nnoremap <leader>d <cmd>lua vim.diagnostic.setloclist()<cr>

" Refresh buffer
nnoremap <leader>e <cmd>e<cr><C-o>

" Format file text
nnoremap <leader>f mfgg=G`f

" Insert new UUID
inoremap <leader>g <Plug>Nuuid
xnoremap <leader>g <Plug>Nuuid

" Clear search highlighting
nnoremap <leader>/ :let @/=""<CR>

" Toggle location list
nnoremap <silent> <leader>l :call ToggleLocationList()<cr>

" Toggle relative line number
nnoremap <leader>n <cmd>setlocal rnu!<cr>

" Toggle fold method
nnoremap <leader>o <cmd>call ToggleFoldMethod()<cr>

" Toggle quickfix<S-F10>
nnoremap <silent> <leader>q :call ToggleQuickFix()<CR>

" Equalize splits
nnoremap <leader>r <C-w>=
nnoremap <leader>R <cmd>SizeSplitToLines<CR>

" New splits
nnoremap <leader>s :vnew<CR>
nnoremap <leader>S :new<CR>
" Sort lines
xnoremap <silent> <leader>s <cmd>sort<CR>

" Toggle boolean/conditional/+-
nnoremap <silent> <leader>t <cmd>call Toggle()<CR>

" Search for unicode character
inoremap <leader>u <esc>:UnicodeSearch! 

" Word Wrap
nnoremap <leader>w <cmd>setlocal wrap!<cr>

" Window Swap
let g:windowswap_map_keys = 0
nnoremap <silent> <leader>y <cmd>call WindowSwap#EasyWindowSwap()<CR>

" Remap =
nnoremap <leader>= =
