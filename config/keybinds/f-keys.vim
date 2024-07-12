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
  nmap <M-C-S-F12> <S-F24>
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
" Yank to register a
nnoremap <F1> "ayy
xnoremap <F1> "ay
" Paste register a
nnoremap <F1><F1> "ap
xnoremap <F1><F1> "ap
inoremap <F1> <esc>"ap

" Yank to register s
nnoremap <F2> "syy
xnoremap <F2> "sy
" Paste register s
nnoremap <F2><F2> "sp
xnoremap <F2><F2> "sp
inoremap <F2> <esc>"sp

" Yank to register d
nnoremap <F3> "dyy
xnoremap <F3> "dy
" Paste register d
xnoremap <F3><F3> "dp
nnoremap <F3><F3> "dp
inoremap <F3> <esc>"dp

" Yank to register f
nnoremap <F4> "fyy
xnoremap <F4> "fy
" Paste register f
xnoremap <F4><F4> "fp
nnoremap <F4><F4> "fp
inoremap <F4> <esc>"fp

" LSP hover
nnoremap <F5> <cmd>lua vim.lsp.buf.hover()<cr>
" Reload config
nnoremap <S-F5> :source $MYVIMRC<CR>
" End line with semicolon and move back to current position
inoremap <F5> <esc>mmA;<esc>`mlmm
" End line with semicolon, create new line
inoremap <S-F5> <End>;<esc>o

" Toggle terminal for current tab
nnoremap <silent> <F6> <cmd>ToggleTermTab<CR>
tnoremap <silent> <F6> <cmd>ToggleTermTab<CR>
" Toggle terminal for all tabs
nnoremap <silent> <S-F6> <cmd>ToggleTermToggleAll<CR>
tnoremap <silent> <S-F6> <cmd>ToggleTermToggleAll<CR>

" Lazygit
nnoremap <silent> <F7> <cmd>Lazygit<cr>
tnoremap <silent> <F7> <cmd>Lazygit<cr>
" Twui
nnoremap <silent> <F8> <cmd>Twui<cr>
tnoremap <silent> <F8> <cmd>Twui<cr>
" Btop
nnoremap <silent> <F9> <cmd>Btop<cr>
tnoremap <silent> <F9> <cmd>Btop<cr>

" LSP actions
nnoremap <F12> <cmd>CodeActionMenu<CR>
nnoremap <S-F12> :LspRestart<cr>
nnoremap <C-F12> :LspInfo<cr>

" Telescope
" List LSP Document Symbols
nnoremap <F13> <cmd>Telescope lsp_document_symbols<cr>
" Paste register a
xnoremap <F13> "ap
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap <F14> <cmd>Telescope lsp_definitions<cr>
" Paste register s
xnoremap <F14> "sp
" Goto implementation of word under cursor if only one, otherwise list in Telescope
nnoremap <F15> <cmd>Telescope lsp_implementations<cr>
" Paste register d
xnoremap <F15> "dp
" List LSP references for word under cursor
nnoremap <F16> <cmd>Telescope lsp_references<cr>
" Paste register f
xnoremap <F16> "fp

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

nnoremap <F24> <cmd>lua MiniJump2d.start({allowed_lines = { cursor_before = false}})<cr>
nnoremap <S-F24> <cmd>lua MiniJump2d.start({allowed_lines = { cursor_after = false}})<cr>
