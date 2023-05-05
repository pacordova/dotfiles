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
hi Visual     ctermfg=15 ctermbg=black
hi Search     ctermfg=black ctermbg=6
hi ModeMsg    cterm=NONE ctermfg=black ctermbg=15
