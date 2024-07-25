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

" Telescope
nnoremap <F1> <cmd>Telescope<CR>

" Yank to register a
nnoremap <F2> "ayy<cmd>echo "Yank Line to Buffer 'a' (F2)"<cr>
xnoremap <F2> "ay<cmd>echo "Yank to Buffer 'a' (F2)"<cr>
" Paste register a
nnoremap <F2><F2> o<esc>V"ap<cmd>echo "Paste Buffer 'a' (F2)"<cr>
xnoremap <F2><F2> "ap<cmd>echo "Paste Buffer 'a' (F2)"<cr>
inoremap <F2> <esc>"ap<cmd>echo "Paste Buffer 'a' (F2)"<cr>

" Yank to register s
nnoremap <F3> "syy<cmd>echo "Yank Line to Buffer 's' (F3)"<cr>
xnoremap <F3> "sy<cmd>echo "Yank to Buffer 's' (F3)"<cr>
" Paste register s
nnoremap <F3><F3> o<esc>V"sp<cmd>echo "Paste Buffer 's' (F3)"<cr>
xnoremap <F3><F3> "sp<cmd>echo "Paste Buffer 's' (F3)"<cr>
inoremap <F3> <esc>"sp<cmd>echo "Paste Buffer 's' (F3)"<cr>

" Yank to register d
nnoremap <F4> "dyy<cmd>echo "Yank Line to Buffer 'd' (F4)"<cr>
xnoremap <F4> "dy<cmd>echo "Yank to Buffer 'd' (F4)"<cr>
" Paste register d
nnoremap <F4><F4> o<esc>V"dp<cmd>echo "Paste Buffer 'd' (F4)"<cr>
xnoremap <F4><F4> "dp<cmd>echo "Paste Buffer 'd' (F4)"<cr>
inoremap <F4> <esc>"dp<cmd>echo "Paste Buffer 'd' (F4)"<cr>

" Yank to register f
nnoremap <F6> "fyy<cmd>echo "Yank Line to Buffer 'f' (F6)"<cr>
xnoremap <F6> "fy<cmd>echo "Yank to Buffer 'f' (F6)"<cr>
" Paste register f
nnoremap <F6><F6> o<esc>V"fpl<cmd>echo "Paste Buffer 'f' (F6)"<cr>
xnoremap <F6><F6> "fp<cmd>echo "Paste Buffer 'f' (F6)"<cr>
inoremap <F6> <esc>"fp<cmd>echo "Paste Buffer 'f' (F6)"<cr>

" LSP hover
nnoremap <F5> <cmd>lua vim.lsp.buf.hover()<cr>
" Reload config
nnoremap <S-F5> :source $MYVIMRC<CR>
" End line with semicolon and move back to current position
inoremap <F5> <esc>mmA;<esc>`mlmm
" End line with semicolon, create new line
inoremap <S-F5> <End>;<esc>o

" Record/play macro a
nnoremap <F8> qa
nnoremap <F8><F8> @a
xnoremap <F8> qa
xnoremap <F8><F8> @a
" Record/play macro s
nnoremap <F9> qs
nnoremap <F9><F9> @s
xnoremap <F9> qs
xnoremap <F9><F9> @s
" Record/play macro d
nnoremap <F10> qd
nnoremap <F10><F10> @d
xnoremap <F10> qd
xnoremap <F10><F10> @d
" Record/play macro f
nnoremap <F11> qf
nnoremap <F11><F11> @f
xnoremap <F11> qf
xnoremap <F11><F11> @f

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

nnoremap <F24> <cmd>ToggleTermTab<cr>
tnoremap <F24> <cmd>ToggleTermTab<cr>
nnoremap <S-F24> <cmd>ToggleTermToggleAll<cr>
tnoremap <S-F24> <cmd>ToggleTermToggleAll<cr>
