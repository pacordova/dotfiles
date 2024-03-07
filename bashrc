alias uniq="awk '!($0 in a){a[$0];print $0}'"
alias du="du -ahxd1 | sort -h"
alias ls="/usr/bin/ls -F"

export PATH=$HOME/.local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PS1="\u039b "
export CFLAGS="-pipe -O2 -fstack-protector-strong -fcommon -pipe" 
export CXXFLAGS=$CFLAGS
export PREFIX=$HOME/.local
export VISUAL=vim
export EDITOR=vim
export TERM=st-256color
export PAGER=less
#export LESS=eFRX

if [[ '/dev/tty1' = `tty` ]]
then
    xinit && logout
fi
