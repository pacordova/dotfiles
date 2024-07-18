let skip_defaults_vim=1

syntax off
hi Visual  cterm=reverse
hi Search  ctermfg=black ctermbg=6
hi ModeMsg cterm=NONE ctermfg=black ctermbg=15
hi LineNr  ctermfg=black

set nocompatible
set backspace=2
set mouse=a
set nonu
set nobackup
set nowritebackup

filetype plugin indent on
set cino+=t0
autocmd FileType lua setlocal shiftwidth=3 tabstop=3 expandtab
autocmd FileType c setlocal shiftwidth=4 tabstop=4 noexpandtab
