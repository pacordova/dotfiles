"init
set runtimepath=$HOME/.config/vim,/usr/share/vim/vim90
set packpath=$HOME/.config/vim

"pathogen
execute pathogen#infect()

"colors
syntax on
colorscheme acme

"misc
set nu
set nobackup nowritebackup
set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set linebreak

let r_indent_align_args = 0
