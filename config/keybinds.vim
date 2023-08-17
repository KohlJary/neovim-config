" Bind F24 (right outer thumb key on moonlander) as leader
let mapleader = "\<F24>"

" Map F-keys above 12 for Windows
if (g:detected_os == 'WINDOWS')
  nmap <M-C-F1> <F13>
  nmap <M-C-S-F1> <S-F13>
  nmap <M-C-F2> <F14>
  nmap <M-C-F3> <F15>
  nmap <M-C-F4> <F16>
  nmap <M-C-F5> <F17>
  nmap <M-C-F6> <F18>
  nmap <M-C-F7> <F19>
  nmap <M-C-F8> <F20>
  nmap <M-C-F9> <F21>
  nmap <M-C-F10> <F22>
  nmap <M-C-F11> <F23>
  nmap <M-C-F12> <F24>
  tmap <M-C-F1> <F13>
  tmap <M-C-F2> <F14>
  tmap <M-C-F3> <F15>
  tmap <M-C-F4> <F16>
  tmap <M-C-F5> <F17>
  tmap <M-C-F6> <F18>
  tmap <M-C-F7> <F19>
  tmap <M-C-F8> <F20>
  tmap <M-C-F9> <F21>
  tmap <M-C-F10> <F22>
  tmap <M-C-F11> <F23>
  tmap <M-C-F12> <F24>
endif

" Lightspeed
nnoremap s <plug>Lightspeed_s<cr>
xnoremap s <plug>Lightspeed_s<cr>
nnoremap S <plug>Lightspeed_S<cr>
xnoremap S <plug>Lightspeed_S<cr>

" Toggleterm
" Toggle terminal for current tab
nnoremap <silent> <F13> <cmd>ToggleTermTab<CR>
tnoremap <silent> <F13> <cmd>ToggleTermTab<CR>
nnoremap <silent> <leader><F13> <cmd>ToggleTermToggleAll<CR>
tnoremap <silent> <leader><F13> <cmd>ToggleTermToggleAll<CR>

" Floating terminal
nnoremap <silent> <leader>t <cmd>FloatTerm<CR>
tnoremap <silent> <leader>t <C-/><C-n><cmd>FloatTerm<CR>

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
nnoremap - <C-w>=
nnoremap _ <cmd>SizeSplitToLines<CR>
nnoremap <leader>- :set ead=ver ea noea<CR> " set windows equal vertically (^W, =, =)
nnoremap <leader>_ :set ead=hor ea noea<CR> " set windows equal horizontally (^W, =, -)
" Rotate splits
nnoremap <leader>rr <C-w>r
" Clone splits
nnoremap <M-S> :vsp<CR>
nnoremap <M-I> :sp<CR>
" New splits
nnoremap <M-s> :vnew<CR>
nnoremap <M-i> :new<CR>
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
nnoremap <C-f> zA
vnoremap <C-f> zf
" Toggle folds
nnoremap <Space> :ToggleFoldRecursive<CR>

" Function keys
" Nvim LSP Code Action
nnoremap <F1> <cmd>CodeActionMenu<CR>
" Insert new UUID
inoremap <F1> <Plug>Nuuid
xnoremap <F1> <Plug>Nuuid
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap <F2> <cmd>Telescope lsp_definitions<cr>
" Sort lines
xnoremap <silent> <F2> <cmd>sort<CR>
" List LSP references for word under cursor
nnoremap <F3> <cmd>Telescope lsp_references<cr>
" Buffer delete menu
nnoremap <F4> <cmd>Bdelete! menu<CR>
" Run last command
nnoremap <F5> @:<CR>
" End line with semicolon and move back to current position
inoremap <F5> <esc>mmA;<esc>`mlmm
" Toggle relative line number
nnoremap <F6> <cmd>setlocal rnu!<cr>
" Taskwarrior
nnoremap <silent> <F7> :Twui<CR>
tnoremap <silent> <F7> <C-/><C-n><cmd>Twui<CR>
" Toggle fold method
nnoremap <F8> <cmd>call ToggleFoldMethod()<cr>
" Search for unicode character
inoremap <F8> <esc>:UnicodeSearch! 
" Telescope
nnoremap <F9> <cmd>Telescope<cr>
nnoremap <F9>f <cmd>Telescope find_files<cr>
nnoremap <F9>g <cmd>Telescope live_grep<cr>
nnoremap <F9>b <cmd>Telescope buffers<cr>
nnoremap <F9>h <cmd>Telescope help_tags<cr>
nnoremap <F9>s <cmd>Telescope grep_string<cr>
" List LSP references for word under cursor
nnoremap <F9>r <cmd>Telescope lsp_references<cr>
" Goto definition of word under cursor if only one, otherwise list in Telescope
nnoremap <F9>d <cmd>Telescope lsp_definitions<cr>
" Goto implementation of word under cursor if only one, otherwise list in Telescope
nnoremap <F9>i <cmd>Telescope lsp_implementations<cr>
" Goto definition of the type of the word under cursor if only one, otherwise list in Telescope
nnoremap <F9>t <cmd>Telescope lsp_type_definitions<cr>
" List LSP Document Symbols
nnoremap <F9>y <cmd>Telescope lsp_document_symbols<cr>
" Toggle location list
nnoremap <silent> <F10> :call ToggleLocationList()<cr>
" Toggle quickfix
nnoremap <silent> <F11> :call ToggleQuickFix()<CR>
" Reload config
nnoremap <F12> :source $MYVIMRC<CR>
" End line with semicolon, create new line
inoremap <F12> <End>;<esc>o
" Lazygit
nnoremap <silent> <F14> :Lazygit<CR>
tnoremap <silent> <F14> <C-/><C-n><cmd>Lazygit<CR>
" Filetree toggle
nnoremap <silent> <F15> :Neotree float focus reveal<CR>
" Buffer tree toggle
nnoremap <silent> <F16> :Neotree buffers float toggle<CR>
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

" Neotree
nnoremap <silent> = :Neotree float toggle<cr>
nnoremap <silent> + :Neotree buffers float toggle<cr>

" Word Wrap
nnoremap <leader>w <cmd>setlocal wrap!<cr>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]h+<ESC>P
xnoremap { xi{}<ESC>P

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


" End LOC with semicolon
inoremap <M-;> <ESC>A;
" Inline comment at EOL
inoremap <C-c> <End><Space>//<Space>
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
" Redo
nnoremap <S-u> <C-r>
" Commenting line(s)
nnoremap <C-c> :Commentary<CR>
xnoremap <C-c> :Commentary<CR>
" Change indentation
nnoremap <S-Tab> <<
vnoremap <S-Tab> <
nnoremap <Tab> >>
vnoremap <Tab> >
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap va ggVG
" Format file text
nnoremap <leader>= mfgg=G`f
" Clear search highlighting
nnoremap <leader>/ :let @/=""<CR>

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
