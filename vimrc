"init
set runtimepath=$HOME/.config/vim,/usr/share/vim/vim90
set packpath=$HOME/.config/vim
execute pathogen#infect()

"colors
syntax off
hi LineNr    ctermfg=4

"disable backups
set nobackup
set noswapfile
set nowritebackup
set noundofile

"misc
autocmd BufWritePre * %s/\s\+$//e
let r_indent_align_args = 0
vnoremap <leader>p "_dP
set clipboard=unnamedplus
set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set nu

"word wrap
set showbreak=\ \ \ \ |
set linebreak
set breakat=\ !@*+;:,/?
set columns=80
