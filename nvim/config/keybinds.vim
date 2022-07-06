" Bind delete as leader
let mapleader = "\<Del>"
" Bind backslash as alternate leader key
nmap \ <Del>

" Omnisharp mappings
nnoremap <A-[> :OmniSharpNavigateUp<CR>
nnoremap <A-]> :OmniSharpNavigateDown<CR>
nnoremap <A-f> :OmniSharpFindUsages<CR>
nnoremap <A-g> :OmniSharpGotoDefinition split<CR>
nnoremap <A-R> :OmniSharpRestartServer<CR>
nnoremap <leader>oss :OmniSharpStatus<CR>

" NERDTree
nnoremap <space> :NERDTreeToggle<CR>
nnoremap <CR> :NERDTreeFocus<CR>

" Vista
nnoremap <silent> <leader>v :Vista!!<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Bufexplorer
nnoremap <C-g> <cmd>ToggleBufExplorer<cr>

" Split operations
" Movement
nnoremap <silent> <C-h> <C-w>h
tnoremap <silent> <C-h> <C-\><C-n><C-w>h
nnoremap <silent> <C-j> <C-w>j
tnoremap <silent> <C-j> <C-\><C-n><C-w>j
nnoremap <silent> <C-k> <C-w>k
tnoremap <silent> <C-k> <C-\><C-n><C-w>k
nnoremap <silent> <C-l> <C-w>l
tnoremap <silent> <C-l> <C-\><C-n><C-w>l
" Resizing
nnoremap <Left> <C-w><
tnoremap <C-Left> <C-\><C-n><C-w><i
nnoremap <Right> <C-w>>
tnoremap <C-Right> <C-\><C-n><C-w>>i
nnoremap <Up> <C-w>+
tnoremap <C-Up> <C-\><C-n><C-w>+i
nnoremap <Down> <C-w>-
tnoremap <C-Down> <C-\><C-n><C-w>-i
" Maximize/reset size
nnoremap + <C-w>_
nnoremap - <C-w>\|
nnoremap = <C-w>=
" Rotate splits
nnoremap <leader>r <C-w>r
" New splits
nnoremap <A-i> :vnew<CR>
nnoremap <A-v> :new<CR>
" Next/prev buffer
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
" Close buffer
nnoremap <C-q> :bp\|bd! #<CR>

" Tab operations
" New tab
nnoremap <C-t> :tabnew<CR>
" Open current buffer in new tab
nnoremap <C-r> :tabnew\|e #<CR>
" Close tab
nnoremap <C-e> :tabclose<CR>
" Previous tab
nnoremap <C-p> :tabp<CR>
tnoremap <C-p> <C-/><C-n><cmd>tabp<CR>
" Next tab
nnoremap <C-n> :tabn<CR>
tnoremap <C-n> <C-/><C-n><cmd>tabn<CR>
" Move tabs
nnoremap <M--> :-tabm<CR>
nnoremap <M-=> :+tabm<CR>
nnoremap <M-1> :tabr<CR>
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <M-9> :tabl<CR>

" Fold operations
nnoremap <M-o> zA
vnoremap <M-o> zf

" Function keys
" Save session
nnoremap <F1> :SaveSession
" Insert escape character
inoremap <F1> <C-v>
" Git write shortcut
nnoremap <C-F1> :Gw<CR>
nnoremap <F25> :Gw<CR>
" Format file
nnoremap <silent> <M-F1> :OmniSharpCodeFormat<CR>:Format<CR>
nnoremap <silent> <F49> :OmniSharpCodeFormat<CR>:Format<CR>
" Open session
nnoremap <F2> :OpenSession<CR>
" Sort lines
xnoremap <F2> :sort<CR>
" Git commit shortcut
nnoremap <C-F2> :Gcm ""<Left>
nnoremap <F26> :Gcm ""<Left>
" Fold buffer
nnoremap <M-F2> :Fold<CR>
nnoremap <F50> :Fold<CR>
" Delete session
nnoremap <F3> :DeleteSession<CR>
" Git pull shortcut
nnoremap <C-F3> :G pull<CR>
nnoremap <F27> :G pull<CR>
" Organize imports
nnoremap <M-F3> :OR<CR>
nnoremap <F51> :OR<CR>
" Buffer delete menu
nnoremap <F4> :Bdelete! menu<CR>
" Git push shortcut
nnoremap <C-F4> :Gp<CR>
nnoremap <F28> :Gp<CR>
" Coc format
nnoremap <M-F4> :Format<CR>
nnoremap <F52> :Format<CR>
" Reload vimrc
nnoremap <F5> :source $MYVIMRC<CR>
" Semicolon shortcut
inoremap <F5> <ESC>A;<ESC>
" Git diff split
nnoremap <C-F5> :Gdiffsplit<CR>
nnoremap <F29> :Gdiffsplit<CR>
" Reload CoC
nnoremap <silent> <F6> :LspRestart<CR>:CocRestart<CR>
" Lsp Info
nnoremap <silent> <F7> :LspInfo<CR>
" Toggle bg passthrough
nnoremap <silent> <F8> :SrceryBGToggle<CR>
" Toggle cursorline for buffer
nnoremap <silent> <F9> :setlocal cursorline!<CR>
" Toggle relative line numbering for buffer
nnoremap <silent> <F10> :setlocal rnu!<CR>
" Switch UI positioning
nnoremap <F11> :ToggleUIPositioning<CR>
" Coc Quickfix
nnoremap <F12> :<C-u>CocAction<CR>
" Bufexplorer
nnoremap <C-F12> :BufExplorer<CR>
" Plugin install
nnoremap <M-F12> :PlugInstall<CR>
nnoremap <F72> :PlugInstall<CR>
" Lazygit
tnoremap <F13> <C-\><C-n>:Lazygit<CR>
tnoremap <M-C-F1> <C-\><C-n>:Lazygit<CR>
nnoremap <F13> :Lazygit<CR>
nnoremap <M-C-F1> :Lazygit<CR>
" Taskwarrior tui
tnoremap <F14> <C-\><C-n>:Twui<CR>
tnoremap <M-C-F2> <C-\><C-n>:Twui<CR>
nnoremap <F14> :Twui<CR>
nnoremap <M-C-F2> :Twui<CR>
" Find files in cwd
tnoremap <F15> <C-\><C-n>:Telescope<CR>
tnoremap <M-C-F3> <C-\><C-n>:Telescope<CR>
nnoremap <F15> :Telescope find_files<CR>
nnoremap <M-C-F3> :Telescope find_files<CR>
" Search for string under cursor in cwd
tnoremap <F16> <C-\><C-n>:Telescope<CR>
tnoremap <M-C-F4> <C-\><C-n>:Telescope<CR>
nnoremap <F16> :Telescope grep_string<CR>
nnoremap <M-C-F4> :Telescope grep_string<CR>
" Search buffers
tnoremap <F17> <C-\><C-n>:Telescope<CR>
tnoremap <M-C-F5> <C-\><C-n>:Telescope<CR>
nnoremap <F17> :Telescope buffers<CR>
nnoremap <M-C-F5> :Telescope buffers<CR>
" Search help tags
tnoremap <F18> <C-\><C-n>:Telescope<CR>
tnoremap <M-C-F6> <C-\><C-n>:Telescope<CR>
nnoremap <F18> :Telescope help_tags<CR>
nnoremap <M-C-F6> :Telescope help_tags<CR>

" Location list toggle
nnoremap <leader>l :LToggle<CR>
" Quickfix list toggle
nnoremap <leader>q :QToggle<CR>

" Run last command
nnoremap <M-;> @:<CR>
" Run last macro
nnoremap <M-.> @@

" Terminal bindings
" Open terminal
nnoremap <M-C-t> :terminal<CR>
" Open terminal split
nnoremap <M-C-V> :split\|:terminal<CR>
" Open terminal vsplit
nnoremap <M-C-S> :vsplit\|:terminal<CR>
" Escape terminal
tnoremap <leader><leader> <C-\><C-n>
" Reopen terminal in current buffer
tnoremap <C-r> <C-\><C-n>:terminal<CR>
" Close terminal
tnoremap <leader>x <C-\><C-n><C-w>q
" Split terminal buffer vertically
tnoremap <M-C-V> <C-\><C-n> :split\|terminal<CR>
" Split terminal buffer
tnoremap <M-C-S> <C-\><C-n> :vsplit\|terminal<CR>
" Restart process
tnoremap <F5> <C-c><Up><CR>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P

" Yank all file text
nnoremap ya mQggyG`Q:delm Q<CR>

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

" Quick cursor movement/deletion in insert mode
inoremap <C-h> <backspace>
inoremap <C-j> <ESC>A
inoremap <C-k> <ESC>I
inoremap <C-l> <delete>
inoremap <C-w> <ESC>wa
inoremap <C-b> <ESC>bi
inoremap <C-e> <ESC>ea
inoremap <C-u> <ESC>O
inoremap <C-o> <ESC>o
inoremap <C-p> <ESC>pa

" File Traversal
" Page up/down
nnoremap <C-Up> <C-u>
nnoremap <C-Down> <C-d>
" Line start/end
nnoremap <C-Left> ^
nnoremap <C-Right> $
" Location navigation
nnoremap <M-Left> :lprev<CR>
nnoremap <M-Up> :lfirst<CR>
nnoremap <M-Down> :llast<CR>
nnoremap <M-Right> :lnext<CR>

" Text  manipulation
" Commenting line(s)
nnoremap <C-c> :Commentary<CR>
xnoremap <C-c> :Commentary<CR>
" Swap character
nnoremap <S-Left> hdlph
nnoremap <S-Right> dlp
" Swap lines
nnoremap <S-Up> <Up>ddp<Up>
nnoremap <S-Down> ddp
" Increment/decrement numbers
nnoremap <M-C-K> <C-a>
nnoremap <M-C-J> <C-x>
" Change indentation
nnoremap <leader>, <<
vnoremap <leader>, <
nnoremap <leader>. >>
vnoremap <leader>. >
" Remap redo
nnoremap R <C-r>
" Swap case
nnoremap <A-u> ~h
xnoremap <A-u> ~
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap va ggVG
" Format file text
nnoremap <leader>= mfgg=G`f
" Clear search highlighting
nnoremap <leader>/ :let @/=""<CR>
" Remap <C-g>
nnoremap <leader>i <C-g>
