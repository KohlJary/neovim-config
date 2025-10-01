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

" Reload config
nnoremap <leader>c :source $MYVIMRC<CR>
nnoremap <leader>C :LspRestart<CR>

" Diagnostic list
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap <leader>d <cmd>Telescope lsp_definitions<cr>
" Highlight differences between window buffers
nnoremap <leader>D <cmd>windo diffthis<cr>
" vim-doge Generate Documentation Comment
nnoremap <localleader>d <plug>(doge-generate)

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

" Goto implementation of word under cursor if only one, otherwise list in Telescope
nnoremap <leader>i <cmd>Telescope lsp_implementations<cr>
" Twui
nnoremap <localleader>i <cmd>Twui<cr>
tnoremap <localleader>i <cmd>Twui<cr>

" Yank to register a
nnoremap <leader>j "ayy<cmd>echo "Yank Line to Buffer 'a'"<cr>
xnoremap <leader>j "ay<cmd>echo "Yank to Buffer 'a'"<cr>
" Paste register a
nnoremap <leader>jj o<esc>V"ap<cmd>echo "Paste Buffer 'a' (F2)"<cr>
xnoremap <leader>jj "ap<cmd>echo "Paste Buffer 'a'"<cr>
inoremap <leader>j <esc>"ap<cmd>echo "Paste Buffer 'a'"<cr>

" Yank to register s
nnoremap <leader>k "syy<cmd>echo "Yank Line to Buffer 's'"<cr>
xnoremap <leader>k "sy<cmd>echo "Yank to Buffer 's'"<cr>
" Paste register s
nnoremap <leader>kk o<esc>V"sp<cmd>echo "Paste Buffer 's'"<cr>
xnoremap <leader>kk "sp<cmd>echo "Paste Buffer 's'"<cr>
inoremap <leader>k <esc>"sp<cmd>echo "Paste Buffer 's'"<cr>

" Yank to register d
nnoremap <leader>l "dyy<cmd>echo "Yank Line to Buffer 'd'"<cr>
xnoremap <leader>l "dy<cmd>echo "Yank to Buffer 'd'"<cr>
" Paste register d
nnoremap <leader>ll o<esc>V"dp<cmd>echo "Paste Buffer 'd'"<cr>
xnoremap <leader>ll "dp<cmd>echo "Paste Buffer 'd'"<cr>
inoremap <leader>l <esc>"dp<cmd>echo "Paste Buffer 'd'"<cr>

" Toggle location list
nnoremap <silent> <localleader>l :call ToggleLocationList()<cr>

" Mason quickload
nnoremap <silent> <localleader>m <cmd>Mason<cr>

" Toggle relative line number
nnoremap <localleader>n <cmd>setlocal rnu!<cr>

" Insert empty line below/above
nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j

" Prosession Load/Clean/Delete
nnoremap <localleader>p  <cmd>Prosession<cr>
nnoremap <localleader>pc <cmd>ProsessionClean<cr>
nnoremap <localleader>pd <cmd>ProsessionDelete<cr>

" Toggle quickfix
nnoremap <silent> <leader>q :call ToggleQuickFix()<CR>
" Quick close neovim
nnoremap <silent> <leader><C-q> :qa<CR>
" Delete current buffer
nnoremap <localleader>q <cmd>Bdelete<cr>
" Delete all buffers, keep window layout
nnoremap <localleader>Q <cmd>bufdo :Bdelete<cr>

" List LSP references for word under cursor
nnoremap <leader>r <cmd>Telescope lsp_references<cr>
" Fast find/replace
xnoremap <localleader>r y<cmd>let @/=escape(@", '/')<cr>"_cgn

" WindowSwap
let g:windowswap_map_keys = 0
nnoremap <localleader>s <cmd>call WindowSwap#EasyWindowSwap()<CR>
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
" Idk why I have to specifically call lua _vifm_toggle
" for just this program but whatevs
nnoremap <localleader>v <cmd>lua _vifm_toggle()<cr>
tnoremap <localleader>v <cmd>lua _vifm_toggle()<cr>

" Word Wrap
nnoremap <localleader>w <cmd>setlocal wrap!<cr>

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

" Goto prev/next diagnostic
nnoremap <leader>n <cmd>lua vim.diagnostic.goto_prev()<cr>
nnoremap <leader>p <cmd>lua vim.diagnostic.goto_next()<cr>

" Rebind register actions
xnoremap <leader>" "
xnoremap <leader>' '
