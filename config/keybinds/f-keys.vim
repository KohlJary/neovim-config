if (g:detected_os == 'WINDOWS')
  " Map F-keys above 12 for Windows
  nmap <M-C-F1> <F13>
  nmap <M-C-S-F1> <S-F13>
  nmap <M-C-F2> <F14>
  nmap <M-C-S-F2> <S-F14>
  nmap <M-C-F3> <F15>
  nmap <M-C-S-F2> <S-F15>
  nmap <M-C-F4> <F16>
  nmap <M-C-S-F3> <S-F16>
  nmap <M-C-F5> <F17>
  nmap <M-C-S-F5> <S-F17>
  nmap <M-C-F6> <F18>
  nmap <M-C-S-F6> <S-F18>
  nmap <M-C-F7> <F19>
  nmap <M-C-S-F7> <S-F19>
  nmap <M-C-F8> <F20>
  nmap <M-C-S-F8> <S-F20>
  nmap <M-C-F9> <F21>
  nmap <M-C-S-F9> <S-F21>
  nmap <M-C-F10> <F22>
  nmap <M-C-S-F10> <S-F22>
  nmap <M-C-F11> <F23>
  nmap <M-C-S-F11> <S-F23>
  nmap <M-C-F12> <F24>
  nmap <M-C-S-F12> <S-F23>
  tmap <M-C-F1> <F13>
  tmap <M-C-S-F1> <S-F13>
  tmap <M-C-F2> <F14>
  tmap <M-C-S-F2> <S-F14>
  tmap <M-C-F3> <F15>
  tmap <M-C-S-F2> <S-F15>
  tmap <M-C-F4> <F16>
  tmap <M-C-S-F3> <S-F16>
  tmap <M-C-F5> <F17>
  tmap <M-C-S-F5> <S-F17>
  tmap <M-C-F6> <F18>
  tmap <M-C-S-F6> <S-F18>
  tmap <M-C-F7> <F19>
  tmap <M-C-S-F7> <S-F19>
  tmap <M-C-F8> <F20>
  tmap <M-C-S-F8> <S-F20>
  tmap <M-C-F9> <F21>
  tmap <M-C-S-F9> <S-F21>
  tmap <M-C-F10> <F22>
  tmap <M-C-S-F10> <S-F22>
  tmap <M-C-F11> <F23>
  tmap <M-C-S-F11> <S-F23>
  tmap <M-C-F12> <F24>
  tmap <M-C-S-F12> <S-F24>
endif

" Toggle terminal for current tab
nnoremap <silent> <F1> <cmd>ToggleTermTab<CR>
tnoremap <silent> <F1> <cmd>ToggleTermTab<CR>
" Toggle terminal for all tabs
nnoremap <silent> <S-F1> <cmd>ToggleTermToggleAll<CR>
tnoremap <silent> <S-F1> <cmd>ToggleTermToggleAll<CR>
" Insert new UUID
inoremap <F1> <Plug>Nuuid
xnoremap <F1> <Plug>Nuuid

" Search for unicode character
inoremap <F2> <esc>:UnicodeSearch! 
" Sort lines
xnoremap <silent> <F2> <cmd>sort<CR>
" Lazygit
let g:windowswap_map_keys = 0
nnoremap <silent> <F2> <cmd>call WindowSwap#EasyWindowSwap()<CR>

" Taskwarrior
nnoremap <silent> <F3> <cmd>Twui<cr>
tnoremap <silent> <F3> <cmd>Twui<cr>

" Buffer delete
nnoremap <F4> <cmd>Bdelete! menu<cr>

" Reload config
nnoremap <F5> :source $MYVIMRC<CR>
" Reload .vimrc
nnoremap <S-F5> :source $VIMDIR/.vimrc<cr>
" Refresh buffer
nnoremap <C-F5> <cmd>e<cr><C-o>
" End line with semicolon and move back to current position
inoremap <F5> <esc>mmA;<esc>`mlmm
" End line with semicolon, create new line
inoremap <S-F5> <End>;<esc>o

nnoremap <F6> <cmd>lua vim.diagnostic.setloclist()<cr>

" Load/Start Prosession
nnoremap <F7> <cmd>Prosession<cr>
" Delete Prosession
nnoremap <F8> <cmd>ProsessionDelete<cr>
" Clean Prosession
nnoremap <F9> <cmd>ProsessionClean<cr>
" Taskwarrior
nnoremap <silent> <F10> <cmd>Twui<cr>
tnoremap <silent> <F10> <cmd>Twui<cr>
" Lazygit
nnoremap <silent> <F11> <cmd>Lazygit<CR>
tnoremap <silent> <F11> <cmd>Lazygit<CR>

" LSP actions
nnoremap <F12> <cmd>CodeActionMenu<CR>
nnoremap <S-F12> :LspRestart<cr>
nnoremap <C-F12> :LspInfo<cr>

" Telescope
" List LSP Document Symbols
nnoremap <F13> <cmd>Telescope lsp_document_symbols<cr>
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap <F14> <cmd>Telescope lsp_definitions<cr>
" Goto implementation of word under cursor if only one, otherwise list in Telescope
nnoremap <F15> <cmd>Telescope lsp_implementations<cr>
" List LSP references for word under cursor
nnoremap <F16> <cmd>Telescope lsp_references<cr>

" nvim-dap Start/Continue Debugging
nnoremap <silent> <F17> <cmd>lua if vim.fn.filereadable(".vscode/launch.json") then require("dap.ext.vscode").load_launchjs(".vscode/launch.json", { coreclr = {'cs'} }) end require'dap'.continue()<cr>
" nvim-dap Stop Debugging
nnoremap <S-F17> <cmd>lua require'dap'.terminate()<cr>
" nvim-dap Step Out
nnoremap <F18> <cmd>lua require'dap'.step_out()<cr>
" nvim-dap Step Into
nnoremap <F19> <cmd>lua require'dap'.step_into()<cr>
" nvim-dap Step Over
nnoremap <F20> <cmd>lua require'dap'.step_over()<cr>
" nvim-dap Toggle Breakpoint
nnoremap <F21> <cmd>lua require'dap'.toggle_breakpoint()<cr>
" nvim-dap Clear Breakpoints
nnoremap <F22> <cmd>lua require'dap'.clear_breakpoints()<cr>
