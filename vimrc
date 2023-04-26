"init
set runtimepath=$HOME/.config/vim,/usr/share/vim/vim90
set packpath=$HOME/.config/vim

"pathogen
execute pathogen#infect()

"misc
set nonu
set nobackup nowritebackup
set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set linebreak

let r_indent_align_args = 0

"colors
syntax off
hi Visual     term=NONE cterm=NONE ctermfg=15 ctermbg=16
hi Search     term=NONE cterm=NONE ctermfg=15 ctermbg=16
hi ModeMsg    term=NONE cterm=NONE ctermfg=16 ctermbg=15
