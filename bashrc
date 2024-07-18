alias uniq="awk '!($0 in a){a[$0];print $0}'"
alias ls="/usr/bin/ls -F"
alias gpg="gpg2 --keyserver hkp://keyserver.ubuntu.com/ "

export LESS=eFRX
export PAGER=less
export PATH=$HOME/.local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PS1=$'\u03bb\u0020'
export TERM=st

[ '/dev/tty1' = `tty` ] && startx && logout
