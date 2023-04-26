"init
set runtimepath=$HOME/.config/vim,/usr/share/vim/vim90
set packpath=$HOME/.config/vim

"pathogen
execute pathogen#infect()

"colors
syntax off
hi Visual     term=NONE cterm=NONE ctermfg=15 ctermbg=16

" search colors
hi IncSearch  term=NONE cterm=NONE ctermfg=15 ctermbg=16 
hi Search     term=NONE cterm=NONE ctermfg=15 ctermbg=16
hi ErrorMsg   term=NONE cterm=NONE ctermfg=15 ctermbg=16
hi Error      term=NONE cterm=NONE ctermfg=15 ctermbg=16 
hi WarningMsg term=NONE cterm=NONE ctermfg=15 ctermbg=16
hi WildMenu   term=NONE cterm=NONE ctermfg=15 ctermbg=16


"misc
set nonu
set nobackup nowritebackup
set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set linebreak

let r_indent_align_args = 0
