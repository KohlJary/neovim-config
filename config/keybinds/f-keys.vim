if (g:detected_os == 'WINDOWS')
  " Map F-keys above 12 for Windows
  map <M-C-F1> <F13>
  map <M-C-S-F1> <S-F13>
  map <M-C-F2> <F14>
  map <M-C-S-F2> <S-F14>
  map <M-C-F3> <F15>
  map <M-C-S-F2> <S-F15>
  map <M-C-F4> <F16>
  map <M-C-S-F3> <S-F16>
  map <M-C-F5> <F17>
  map <M-C-S-F5> <S-F17>
  map <M-C-F6> <F18>
  map <M-C-S-F6> <S-F18>
  map <M-C-F7> <F19>
  map <M-C-S-F7> <S-F19>
  map <M-C-F8> <F20>
  map <M-C-S-F8> <S-F20>
  map <M-C-F9> <F21>
  map <M-C-S-F9> <S-F21>
  map <M-C-F10> <F22>
  map <M-C-S-F10> <S-F22>
  map <M-C-F11> <F23>
  map <M-C-S-F11> <S-F23>
  map <M-C-F12> <F24>
  map <M-C-S-F12> <S-F24>
endif

" LSP actions
nnoremap <F1> <cmd>CodeActionMenu<CR>
" Insert vim command output
inoremap <F1> <C-r>=
" Insert shell command output
inoremap <S-F1> <C-r>=system(input('Shell Command: '))[0:-2]<cr>


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

" Filetype specific snippet insertion
" C#
augroup CSFKeyBinds
    autocmd!
    autocmd FileType cs nnoremap <F7> :call InsertBoilerplate("cs", "doc_comment_sum", 0)<cr>a
    autocmd FileType cs nnoremap <F8> :call InsertBoilerplate("cs", "doc_comment_param", 1)<cr>i
    autocmd FileType cs nnoremap <F9> :call InsertBoilerplate("cs", "doc_comment_return", 0)<cr>i
augroup END

" Reload config
nnoremap <F5> :source $MYVIMRC<CR>
nnoremap <F5><F5> :LspRestart<CR>

" Record/play macro h
nnoremap <F11> qh
nnoremap <F11><F11> @h
xnoremap <F11> qh
xnoremap <F11><F11> @h

" LSP actions
nnoremap <F12> :LspInfo<cr>
nnoremap <S-F12> :LspRestart<cr>
" End line with semicolon and move back to current position
inoremap <F12> <esc>mmA;<esc>`mlmm
" End line with semicolon, create new line
inoremap <S-F12> <End>;<esc>o

" Telescope
" List LSP Document Symbols
nnoremap <F13> <cmd>Telescope lsp_document_symbols<cr>
inoremap <F13> <esc><Plug>Nuuid<cr>a
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

" Telescope loclist
nnoremap <F24> <cmd>Telescope loclist<cr>
" Telescope jumplist
nnoremap <S-F24> <cmd>Telescope jumplist<cr>
