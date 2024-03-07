alias uniq="awk '!($0 in a){a[$0];print $0}'"
alias du="du -ahxd1 | sort -h"
alias ls="/usr/bin/ls -F"

# environment
export CFLAGS="-pipe -O2 -fstack-protector-strong -fcommon -pipe" 
export CXXFLAGS=$CFLAGS
export EDITOR=vim
export LANG="en_US.UTF-8"
#export LESS=eFRX
export PAGER=less
export PATH=$HOME/.local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PREFIX=$HOME/.local
export PS1=$'\u03bb\u0020'
export TERM=st-256color
export VISUAL=vim

if [[ '/dev/tty1' = `tty` ]]
then
    xinit && logout
fi
