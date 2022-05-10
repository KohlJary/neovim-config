" --- Custom Commands ---
command -nargs=1 WLine :normal oConsole.WriteLine(<args>);<esc>$
command -nargs=1 Log :normal oDebug.Log(<args>);<esc>$
command -nargs=1 GetComp :normal a(<args>)gameObject.GetComponent<<args>>();<esc>
command -nargs=1 For :normal ofor(int i = 0; i < <args>; i++)<CR>{<CR><CR>}<esc>k
command -nargs=1 Ngi :normal oexport interface <args> {<CR>}<esc>k$o
command Serial :normal ^i[SerializeField] <esc>$
command -nargs=1 TabWidth :set tabstop=<args>|set softtabstop=<args>|set shiftwidth=<args>

command EditVimrc :tabnew|e $VIMDIR/.vimrc
command EditInit :tabnew|e $VIMDIR/init.vim
command EditKeys :tabnew|e $VIMDIR/config/keybinds.vim
command EditPlugs :tabnew|e $VIMDIR/config/plugins.vim
command EditCmds :tabnew|e $VIMDIR/config/commands.vim

" Toggleterm commands
command Gitui :10ToggleTerm cmd="gitui" dir=git_dir direction=float
