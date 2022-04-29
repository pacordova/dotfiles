"init
set runtimepath=$HOME/.config/vim,/usr/share/vim,/usr/share/vim/vim82
set packpath=$HOME/.config/vim
execute pathogen#infect()

"colors
syntax on
colorscheme default
hi LineNr    ctermfg=4
hi Statement ctermfg=7

"disable backup stuff
set nobackup
set noswapfile
set nowritebackup
set noundofile

"misc qol
autocmd BufWritePre * %s/\s\+$//e
let r_indent_align_args = 0
set autoindent
set cindent
set cinoptions=t0
set clipboard=unnamedplus
set mouse=a
set nu
set expandtab
set shiftwidth=4
set tabstop=4
