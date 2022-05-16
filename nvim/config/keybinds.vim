let mapleader = ' '

" Omnisharp mappings
nnoremap <A-[> :OmniSharpNavigateUp<CR>
nnoremap <A-]> :OmniSharpNavigateDown<CR>
nnoremap <A-f> :OmniSharpFindUsages<CR>
nnoremap <A-g> :OmniSharpGotoDefinition split<CR>
nnoremap <A-R> :OmniSharpRestartServer<CR>
nnoremap <leader>oss :OmniSharpStatus<CR>

" NERDTree
nnoremap <C-a> :NERDTreeToggle<CR>:normal =<CR>
nnoremap <CR> :NERDTreeFocus<CR>
nnoremap <A-m> :NERDTreeMirror<CR>
nnoremap <A-{> :let Tlist_Use_Right_Window=1<CR>:let g:NERDTreeWinPos="left"<CR>:NERDTree<CR>:TlistClose<CR>:TlistOpen<CR>
nnoremap <A-}> :let Tlist_Use_Right_Window=0<CR>:let g:NERDTreeWinPos="right"<CR>:NERDTree<CR>:TlistClose<CR>:TlistOpen<CR>

" Vista
nnoremap <silent> <C-t> :Vista<CR>
nnoremap <silent> <C-s> :Vista!!<CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Split operations
" Movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Resizing
nnoremap <Left> <C-w><
nnoremap <Right> <C-w>>
nnoremap <Up> <C-w>+
nnoremap <Down> <C-w>-
" Maximize/reset size
nnoremap + <C-w>_
nnoremap \\ <C-w>\|
nnoremap = <C-w>=
" Rotate splits
nnoremap <A-r> <C-w>r
" New splits
nnoremap <A-i> <C-w>v
nnoremap <A-v> <C-w>s

" Buffer operations
" Close buffer
nnoremap <C-q> :bp\|bd! #<CR>
" Prev/next buffer
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>
" Open current buffer in new tab
nnoremap <C-y> :tabnew<CR>:edit # <CR>

" Tab operations
" New/close tabs
nnoremap <A-t> :tabnew<CR>
nnoremap <A-q> :tabclose<CR>
" Previous/next tab
nnoremap <A-p> :tabp<CR>
nnoremap <A-n> :tabn<CR>
" Move tabs
nnoremap <A--> :-tabm<CR>
nnoremap <A-=> :+tabm<CR>
nnoremap <A-1> :tabr<CR>
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> :tabl<CR>

" Fold operations
nnoremap <A-o> za
vnoremap <A-o> zf

" Function keys
" Buffer delete menu
nnoremap <F2> :Bdelete menu<CR>
" Sort lines
xnoremap <F2> :sort<CR>
" Save session
nnoremap <F3> :SaveSession
" Open session
nnoremap <F4> :OpenSession<CR>
" Reload vimrc
nnoremap <F5> :source $MYVIMRC<CR>
" Semicolon shortcut
inoremap <F5> <ESC>A;<ESC>
" Reload CoC
nnoremap <F6> :CocRestart<CR>
" Lsp Info
nnoremap <silent> <F7> :LspInfo<CR>
" Toggle bg passthrough
nnoremap <silent> <F8> :SrceryBGToggle<CR>
" Toggle cursorline for buffer
nnoremap <silent> <F9> :setlocal cursorline!<CR>
" Plugin install
nnoremap <F12> :PlugInstall<CR>
" Git write shortcut
nnoremap <C-F1> :Gw<CR>
nnoremap <F25> :Gw<CR>
" Commit shortcut
nnoremap <C-F2> :Gcm ""<Left>
nnoremap <F26> :Gcm ""<Left>
" Pull shortcut
nnoremap <C-F3> :G pull<CR>
nnoremap <F27> :G pull<CR>
" Push shortcut
nnoremap <C-F4> :Gp<CR>
nnoremap <F28> :Gp<CR>
" Gitui
tnoremap <F13> <C-\><C-n>:Gitui<CR>
nnoremap <F13> :Gitui<CR>
" Taskwarrior tui
tnoremap <F14> <C-\><C-n>:Twui<CR>
nnoremap <F14> :Twui<CR>
" Find files in cwd
tnoremap <F15> <C-\><C-n>:Telescope<CR>
nnoremap <F15> :Telescope find_files<CR>
" Search for string under cursor in cwd
tnoremap <F16> <C-\><C-n>:Telescope<CR>
nnoremap <F16> :Telescope grep_string<CR>
" Search buffers
tnoremap <F17> <C-\><C-n>:Telescope<CR>
nnoremap <F17> :Telescope buffers<CR>
" Search help tags
tnoremap <F18> <C-\><C-n>:Telescope<CR>
nnoremap <F18> :Telescope help_tags<CR>

" Toggle relative numbering
nnoremap <C-w>r :set rnu!<CR>
" Location list toggle
nnoremap <C-x> :LToggle<CR>
" Quickfix list toggle
nnoremap <C-z> :QToggle<CR>
" Git diff quickbind
nnoremap <C-d> :Gdiffsplit<CR>
" Run last command
nnoremap <A-;> @:<CR>

" Terminal bindings
" Open terminal
nnoremap <leader>tt :terminal<CR>
" Open terminal split
nnoremap <leader>ts :split<CR> :terminal<CR>
" Open terminal vsplit
nnoremap <leader>tv :vsplit<CR> :terminal<CR>
" Escape terminal
tnoremap <ESC><ESC> <C-\><C-n>
" Restart process
tnoremap <F5> <C-c><Up><CR>

" Wrap quotes
xnoremap " xi""<ESC>P
xnoremap ' xi''<ESC>P
xnoremap ( xi()<ESC>P
xnoremap [ xi[]<ESC>P
xnoremap { xi{}<ESC>P

" Yank all file text
nnoremap ya jggVGy<C-o>k

" Paste in region
nnoremap pw viwp
nnoremap p' vi'p
nnoremap p" vi"p
nnoremap p[ vi[p
nnoremap p{ vi{p
nnoremap p( vi(p
nnoremap p< vi<p
" Paste overwriting all
nnoremap pa jggVGp<C-o>k
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
inoremap <C-o> <ESC>o
inoremap <C-p> <ESC>pa
" Ctrl Backspace behavior
inoremap <A-BS> <C-W>

" File Traversal
" Page up/down
nnoremap <S-Up> <C-u>
nnoremap <S-Down> <C-d>
" Line start/end
nnoremap <S-Left> ^
nnoremap <S-Right> $
" Location navigation
nnoremap <A-Left> :lprev<CR>
nnoremap <A-Up> :lfirst<CR>
nnoremap <A-Down> :llast<CR>
nnoremap <A-Right> :lnext<CR>

" Text  manipulation
" Commenting line(s)
nnoremap <C-c> :Commentary<CR>
xnoremap <C-c> :Commentary<CR>
" Swap lines
nnoremap <A-k> <Up>ddp<Up>
nnoremap <A-j> ddp
" Swap character
nnoremap <A-h> hdlph
nnoremap <A-l> dlp
" Remap substitute command
nnoremap R s
" Swap case
nnoremap <A-u> ~h
xnoremap <A-u> ~
" Increment/decrement numbers
nnoremap <A-a> <C-a>
nnoremap <A-s> <C-x>
" Break line at cursor
nnoremap \| i<CR><esc>
" Select all text
nnoremap <leader>sa ggVG
" Format file text
nnoremap <leader>= mfgg=G`f
" Clear search highlighting
nnoremap \ :let @/=""<CR>
