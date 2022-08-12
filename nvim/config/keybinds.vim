" Bind delete as leader
let mapleader = "\<Del>"
" Bind backslash as alternate leader key
nmap \ <Del>

" Omnisharp mappings
nnoremap <M-[> :OmniSharpNavigateUp<CR>
nnoremap <M-]> :OmniSharpNavigateDown<CR>
nnoremap <M-f> :OmniSharpFindUsages<CR>
nnoremap <M-g> :OmniSharpGotoDefinition split<CR>
nnoremap <M-R> :OmniSharpRestartServer<CR>
nnoremap <leader>oss :OmniSharpStatus<CR>

" NERDTree
nnoremap <silent> <M-n> :NERDTreeToggle<CR>
tnoremap <silent> <M-n> <C-\><C-n><cmd>NERDTreeToggle<CR>
nnoremap <silent> <space> :NERDTreeFocus<CR>
tnoremap <silent> <M-space> <C-\><C-n><cmd>NERDTreeFocus<CR>

" NvimTree
" nnoremap <silent> <M-n> :NvimTreeToggle<CR>
" tnoremap <silent> <M-n> <C-\><C-n><cmd>NvimTreeToggle<CR>
" nnoremap <silent> <space> :NvimTreeFocus<CR>
" tnoremap <silent> <M-space> <C-\><C-n><cmd>NvimTreeFocus<CR>

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
tnoremap <leader>= <C-\><C-n><C-w>=i
" Rotate splits
nnoremap <leader>r <C-w>r
" Clone splits
nnoremap <M-S-i> :vsp<CR>
nnoremap <M-S-v> :sp<CR>
" New splits
nnoremap <M-i> :vnew<CR>
nnoremap <M-v> :new<CR>
" Next/prev buffer
" nnoremap <leader>n :bn<CR>
" nnoremap <leader>p :bp<CR>
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
nnoremap <C-f> zA
vnoremap <C-f> zf

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
nnoremap <M-t> :terminal<CR>
" Escape terminal
tnoremap <leader><leader> <C-\><C-n>
" Reopen terminal in current buffer
tnoremap <M-r> <C-\><C-n>:terminal<CR>
" Close terminal
tnoremap <M-q> <C-\><C-n><C-w>q
" Split terminal buffer vertically
tnoremap <M-v> <C-\><C-n><cmd>split\|terminal<CR>
" Split terminal buffer
tnoremap <M-i> <C-\><C-n><cmd>vsplit\|terminal<CR>
" Restart process
tnoremap <F5> <C-c><Up><CR>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P

" In next/last parentheses
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F(vi(<cr>
" In next/last bracket
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F[vi[<cr>
" In next/last brace
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F{vi{<cr>
" In next/last angle bracket
onoremap in< :<c-u>normal! f<vi<<cr>
onoremap il< :<c-u>normal! F<vi<<cr>
" In next/last single quote
onoremap in' :<c-u>normal! f'vi'<cr>
onoremap il' :<c-u>normal! F'vi'<cr>
" In next/last double quote
onoremap in" :<c-u>normal! f"vi"<cr>
onoremap il" :<c-u>normal! F"vi"<cr>
" In next/last backtick
onoremap in` :<c-u>normal! f`vi`<cr>
onoremap il` :<c-u>normal! F`vi`<cr>

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
" Redo
nnoremap <S-u> <C-r>
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
nnoremap <M-d> <C-g>
" Remap <C-w>
nnoremap <leader>w <C-w>
