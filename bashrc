alias ip1='dig whoami.cloudflare ch txt @1.1.1.1 +short'
alias unique="awk '!($0 in a){a[$0];print $0}'"
alias du1='du -ahxd1'
alias ls='/usr/bin/ls -F'

inputcolor='\001\e[0;30m\002'
promptcolor='\001\e[1;30m\002'
gitprompt(){
    if [[ `git status 2>/dev/null | grep Changes` ]]
    then
        echo -ne λ*;
    else
        echo -ne λ;
    fi
}

export PATH=$HOME/.local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PS1="\$(gitprompt) "
export CFLAGS='-pipe -Os -fstack-protector-strong -fstack-clash-protection '
export CXXFLAGS=$CFLAGS
export PREFIX=$HOME/.local
export VISUAL=vim
export EDITOR=vim
export TERM=xterm
export PAGER=less
#export LESS=eFRX

if [[ '/dev/tty1' = `tty` ]]
then
    xinit && logout
fi
