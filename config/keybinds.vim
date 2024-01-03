" Bind F24 (right outer thumb key on moonlander) as leader
let mapleader = "\<F24>"

" Map F-keys above 12 for Windows
if (g:detected_os == 'WINDOWS')
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

" Lightspeed
nnoremap s <plug>Lightspeed_s<cr>
xnoremap s <plug>Lightspeed_s<cr>
nnoremap S <plug>Lightspeed_S<cr>
xnoremap S <plug>Lightspeed_S<cr>

" Terminal bindings
" Escape terminal
tnoremap <Esc><Esc> <C-\><C-n>
tnoremap <leader><Esc> <C-\><C-n>

" Split operations
" Movement
nnoremap <silent> <C-h> <C-w>h
tnoremap <silent> <C-h> <Cmd>wincmd h<CR>
nnoremap <silent> <C-j> <C-w>j
tnoremap <silent> <C-j> <Cmd>wincmd j<CR>
nnoremap <silent> <C-k> <C-w>k
tnoremap <silent> <C-k> <Cmd>wincmd k<CR>
nnoremap <silent> <C-l> <C-w>l
tnoremap <silent> <C-l> <Cmd>wincmd l<CR>
" Resizing
nnoremap <C-Left> <C-w><
tnoremap <C-Left> <C-\><C-n><C-w><i
nnoremap <C-Right> <C-w>>
tnoremap <C-Right> <C-\><C-n><C-w>>i
nnoremap <C-Up> <C-w>+
tnoremap <C-Up> <C-\><C-n><C-w>+i
nnoremap <C-Down> <C-w>-
tnoremap <C-Down> <C-\><C-n><C-w>-i
" Maximize/reset size
nnoremap _ <C-w>=
nnoremap - <cmd>SizeSplitToLines<CR>
" Rotate splits
nnoremap <leader>rr <C-w>r
" Clone splits
nnoremap <M-o> :vsp<CR>
nnoremap <M-u> :sp<CR>
" New splits
nnoremap <M-s> :vnew<CR>
nnoremap <M-S> :new<CR>
" Close buffer
nnoremap <C-q> :bp\|bd! #<CR>

" Tab operations
" New tab
nnoremap <C-t> :tabnew<CR>
tnoremap <C-t> <C-/><C-n><cmd>tabnew<CR>
" Open current buffer in new tab
nnoremap <silent> <C-e> :tabnew\|e #<CR>
" Close tab
nnoremap <C-w> :tabclose<CR>
" Previous tab
nnoremap <C-p> :tabp<CR>
tnoremap <C-p> <C-/><C-n><cmd>tabp<CR>
" Next tab
nnoremap <C-n> :tabn<CR>
tnoremap <C-n> <C-/><C-n><cmd>tabn<CR>

" Fold operations
vnoremap <C-f> zf
" Close all folds then open one fold level
nnoremap <C-f> zMzo
" Toggle folds
nnoremap <Space> :ToggleFoldRecursive<CR>


" Function keys
" Insert new UUID
inoremap <F1> <Plug>Nuuid
xnoremap <F1> <Plug>Nuuid
" Nvim LSP Code Action
nnoremap <F1> <cmd>CodeActionMenu<CR>
" Search for unicode character
inoremap <F2> <esc>:UnicodeSearch! 
" Sort lines
xnoremap <silent> <F2> <cmd>sort<CR>
" Buffer delete
nnoremap <F4> <cmd>Bdelete! menu<cr>
" Telescope
nnoremap <F5> <cmd>Telescope<cr>
" End line with semicolon and move back to current position
inoremap <F5> <esc>mmA;<esc>`mlmm
" LSP actions
nnoremap <F6> :LspRestart<cr>
nnoremap <S-F6> :LspInfo<cr>
" Toggle terminal for current tab
nnoremap <silent> <F7> <cmd>ToggleTermTab<CR>
tnoremap <silent> <F7> <cmd>ToggleTermTab<CR>
" Toggle terminal for all tabs
nnoremap <silent> <S-F7> <cmd>ToggleTermToggleAll<CR>
tnoremap <silent> <S-F7> <cmd>ToggleTermToggleAll<CR>
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap <F8> <cmd>Telescope lsp_definitions<cr>
" Goto implementation of word under cursor if only one, otherwise list in Telescope
nnoremap <F9> <cmd>Telescope lsp_implementations<cr>
" List LSP references for word under cursor
nnoremap <F10> <cmd>Telescope lsp_references<cr>
" Goto definition of the type of the word under cursor if only one, otherwise list in Telescope
nnoremap <F11> <cmd>Telescope lsp_type_definitions<cr>
" Reload config
nnoremap <F12> :source $MYVIMRC<CR>
" End line with semicolon, create new line
inoremap <F12> <End>;<esc>o
" List LSP references for word under cursor
nnoremap <F13> <cmd>Telescope lsp_references<cr>
" List LSP Document Symbols
nnoremap <F14> <cmd>Telescope lsp_document_symbols<cr>
nnoremap <F15> <cmd>Telescope find_files<cr>
nnoremap <F16> <cmd>Telescope live_grep<cr>
" nvim-dap Start/Continue Debugging
nnoremap <F17> <cmd>lua require'dap'.continue()<cr>
" nvim-dap Stop Debugging
nnoremap <F18> <cmd>lua require'dap'.terminate()<cr>
" nvim-dap Step Out
nnoremap <F19> <cmd>lua require'dap'.step_out()<cr>
" nvim-dap Step Into
nnoremap <F20> <cmd>lua require'dap'.step_into()<cr>
" nvim-dap Step Over
nnoremap <F21> <cmd>lua require'dap'.step_over()<cr>
" nvim-dap Toggle Breakpoint
nnoremap <F22> <cmd>lua require'dap'.toggle_breakpoint()<cr>
" nvim-dap Clear Breakpoints
nnoremap <F23> <cmd>lua require'dap'.clear_breakpoints()<cr>

" Neotree/Lazygit
nnoremap <silent> <BS> :Neotree float toggle<cr>
nnoremap <silent> <Del> :Neotree buffers float toggle<cr>
nnoremap <silent> <M-=> :Lazygit<CR>
tnoremap <silent> <M-=> <C-/><C-n><cmd>Lazygit<CR>
nnoremap <silent> <F23> :Twui<CR>
tnoremap <silent> <F23> <C-/><C-n><cmd>Twui<CR>

" Word Wrap
nnoremap <leader>w <cmd>setlocal wrap!<cr>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P
xnoremap < xi<><ESC>P

" In next/last parentheses
onoremap i( :<c-u>normal! f(vi(<cr>
onoremap I( :<c-u>normal! F(vi(<cr>
" In next/last bracket
onoremap i[ :<c-u>normal! f[vi[<cr>
onoremap I[ :<c-u>normal! F[vi[<cr>
" In next/last brace
onoremap i{ :<c-u>normal! f{vi{<cr>
onoremap I{ :<c-u>normal! F{vi{<cr>
" In next/last angle bracket
onoremap i< :<c-u>normal! f<vi<<cr>
onoremap I< :<c-u>normal! F<vi<<cr>
" In next/last single quote
onoremap i' :<c-u>normal! f'vi'<cr>
onoremap I' :<c-u>normal! F'vi'<cr>
" In next/last double quote
onoremap i" :<c-u>normal! f"vi"<cr>
onoremap I" :<c-u>normal! F"vi"<cr>
" In next/last backtick
onoremap i` :<c-u>normal! f`vi`<cr>
onoremap I` :<c-u>normal! F`vi`<cr>

" Yank all file text
nnoremap ya mQggyG`Q:delm Q<CR><cmd>echo "Yank All"<cr>

" Paste in region
nnoremap pw viwp
nnoremap p' vi'p
nnoremap p" vi"p
nnoremap p[ vi[p
nnoremap p{ vi{p
nnoremap p( vi(p
nnoremap p< vi<p
" Paste overwriting all
nnoremap pa ggVGp<C-o>
" Paste overwriting line
nnoremap pl Vp
" Quick paste
nnoremap pp p

" Rerun last command
" nnoremap <silent> + @:<cr>
" Rerun last macro
nunmap \
nnoremap <silent> \ @@

" Inline comment at EOL
nnoremap <M-c> A //
inoremap <M-c> <End><Space>//<Space>
" Swap case of next character
inoremap <C-s> <Esc>l~hi
" Ctrl backspace/delete behavior
inoremap <C-BS>  <C-w>
inoremap <M-BS>  <C-w>
inoremap <M-Del> <C-o>de
" inoremap <C-w> <ESC>wa
inoremap <C-b> <ESC>bi
inoremap <C-e> <ESC>ea
inoremap <C-u> <ESC>O
inoremap <C-o> <ESC>o
inoremap <C-p> <ESC>pa
" Select to beginning/end of line from insert mode
inoremap <S-Home> <ESC>v^
inoremap <S-End> <ESC>lv$

" File Traversal
" Location navigation
nnoremap <Up> :lprev<CR>
nnoremap <Down> :lnext<CR>

" Text  manipulation
" Undo
nnoremap <C-z> u
" Redo
nnoremap <S-u> <C-r>
nnoremap <C-y> <C-r>
" Commenting line(s)
nnoremap <C-c> :Commentary<CR>
xnoremap <C-c> :Commentary<CR>
" Change indentation
nnoremap <leader>I <<
xnoremap <leader>I <
nnoremap <leader>i >>
xnoremap <leader>i >
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap va ggVG
" Format file text
nnoremap <leader>f mfgg=G`f
" Clear search highlighting
nnoremap <leader>/ :let @/=""<CR>
" Toggle fold method
nnoremap <leader>o <cmd>call ToggleFoldMethod()<cr>
" Toggle relative line number
nnoremap <leader>n <cmd>setlocal rnu!<cr>
" Toggle location list
nnoremap <silent> <leader>w :call ToggleLocationList()<cr>
" Toggle quickfix<S-F10>
nnoremap <silent> <leader>q :call ToggleQuickFix()<CR>
" Increment/decrement
nnoremap = <C-a>
nnoremap + <C-x>

" Remap <C-w>
nnoremap <M-w> <C-w>
" Remap =
nnoremap <leader>= =

" Swap character
" nnoremap <S-Left> hdlph
" nnoremap <S-Right> dlp
" Swap lines
" nnoremap <Up> <Up>ddp<Up>
" nnoremap <Down> ddp
