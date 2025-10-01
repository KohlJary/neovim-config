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
  " map <M-C-F11> <F23>
  map <M-C-S-F11> <S-F23>
  " map <M-C-F12> <F24>
  map <M-C-S-F12> <S-F24>
endif

" Telescope files
nnoremap <silent> <F1> <cmd>Telescope find_files<cr>
" Insert vim command output
inoremap <F1> <C-r>=
" Insert shell command output
inoremap <S-F1> <C-r>=system(input('Shell Command: '))[0:-2]<cr>

" Telescope grep
nnoremap <silent> <F2> <cmd>Telescope live_grep<cr>

" Telescope buffers
nnoremap <silent> <F3> <cmd>Telescope buffers<cr>

" Telescope document symbools
nnoremap <silent> <F4> <cmd>Telescope lsp_document_symbols<cr>

" Vifm
nnoremap <silent> <F5> <cmd>lua _vifm_toggle()<CR>
tnoremap <silent> <F5> <cmd>lua _vifm_toggle()<CR>

" Telescope document symbools
nnoremap <silent> <F6> <cmd>Telescope current_buffer_fuzzy_find<cr>

" Scrachpad
nnoremap <F7> <cmd>ScratchToggle<CR>

" Yank to register a
nnoremap <F8> "ayy<cmd>echo "Yank Line to Buffer 'a'"<cr>
xnoremap <F8> "ay<cmd>echo "Yank to Buffer 'a'"<cr>
" Paste register a
nnoremap <F8><F8> o<esc>V"ap<cmd>echo "Paste Buffer 'a' (F2)"<cr>
xnoremap <F8><F8> "ap<cmd>echo "Paste Buffer 'a'"<cr>
inoremap <F8> <esc>"ap<cmd>echo "Paste Buffer 'a'"<cr>

" Yank to register s
nnoremap <F9> "syy<cmd>echo "Yank Line to Buffer 's'"<cr>
xnoremap <F9> "sy<cmd>echo "Yank to Buffer 's'"<cr>
" Paste register s
nnoremap <F9><F9> o<esc>V"sp<cmd>echo "Paste Buffer 's'"<cr>
xnoremap <F9><F9> "sp<cmd>echo "Paste Buffer 's'"<cr>
inoremap <F9> <esc>"sp<cmd>echo "Paste Buffer 's'"<cr>

" Yank to register d
nnoremap <F10> "dyy<cmd>echo "Yank Line to Buffer 'd'"<cr>
xnoremap <F10> "dy<cmd>echo "Yank to Buffer 'd'"<cr>
" Paste register d
nnoremap <F10><F10> o<esc>V"dp<cmd>echo "Paste Buffer 'd'"<cr>
xnoremap <F10><F10> "dp<cmd>echo "Paste Buffer 'd'"<cr>
inoremap <F10> <esc>"dp<cmd>echo "Paste Buffer 'd'"<cr>

" ToggleTerm
nnoremap <F11> <cmd>ToggleTermTab<cr>
tnoremap <F11> <cmd>ToggleTermTab<cr>
nnoremap <S-F11> <cmd>ToggleTermToggleAll<cr>
tnoremap <S-F11> <cmd>ToggleTermToggleAll<cr>

" Lazygit
nnoremap <F12> <cmd>Lazygit<cr>
tnoremap <F12> <cmd>Lazygit<cr>
" End line with semicolon and move back to current position
inoremap <F12> <esc>mmA;<esc>`mlmm
" End line with semicolon, create new line
inoremap <S-F12> <End>;<esc>o

" Code Actions
nnoremap <F13> <cmd>lua require'actions-preview'.code_actions()<cr>

" Telescope
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap <F14> <cmd>Telescope lsp_definitions<cr>
" Goto implementation of word under cursor if only one, otherwise list in Telescope
nnoremap <F15> <cmd>Telescope lsp_implementations<cr>
" List LSP references for word under cursor
nnoremap <F16> <cmd>Telescope lsp_references<cr>

" Toggle dadbod-ui
nnoremap <F17> <cmd>DBUIToggle<cr>

" nvim-dap Start/Continue Debugging
nnoremap <silent> <F18> <cmd>lua if vim.fn.filereadable(".vscode/launch.json") then require("dap.ext.vscode").load_launchjs(".vscode/launch.json", { coreclr = {'cs'} }) end require'dap'.continue()<cr>
" nvim-dap Stop Debugging
nnoremap <S-F18> <cmd>lua require'dap'.terminate()<cr>
" nvim-dap Step Over
nnoremap <F19> <cmd>lua require'dap'.step_over()<cr>
" nvim-dap Step Into
nnoremap <F20> <cmd>lua require'dap'.step_into()<cr>
" nvim-dap Step Out
nnoremap <S-F20> <cmd>lua require'dap'.step_out()<cr>
" nvim-dap Toggle Breakpoint
nnoremap <F21> <cmd>lua require'dap'.toggle_breakpoint()<cr>
" nvim-dap Clear Breakpoints
nnoremap <S-F21> <cmd>lua require'dap'.clear_breakpoints()<cr>

" Filetype specific snippet insertion
" C#
augroup CSFKeyBinds
    autocmd!
    autocmd FileType cs nnoremap <F22> :call CSGenerateDocComments()<cr>
    autocmd FileType json nnoremap <F22> <cmd>%!jq .<cr>
augroup END
