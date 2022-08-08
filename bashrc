alias @ip='dig whoami.cloudflare ch txt @1.1.1.1 +short'
alias unique="awk '!($0 in a){a[$0];print $0}'"
alias du1='du -ahxd1'

inputcolor='\001\e[0m\002'
promptcolor='\001\e[1;38m\002'
gitprompt(){
    if [[ `git status 2>/dev/null | grep Changes` ]]
    then
        echo -ne ${promptcolor}λ${inputcolor}'*';
    else
        echo -ne ${promptcolor}λ${inputcolor};
    fi
}

export PATH=$HOME/.local/bin:$PATH
export PS1="\$(gitprompt) "
export CFLAGS='-pipe -Os -fstack-protector-strong -fstack-clash-protection '
export CXXFLAGS=$CFLAGS
export PREFIX=$HOME/.local
export VISUAL=vim
export EDITOR=vim
export TERM=xterm-256color
export LESS=eFRX

if [[ '/dev/tty1' = `tty` ]]
then
    xinit && logout
fi
