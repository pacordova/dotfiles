# Aliases
alias uniq="awk '!($0 in a){a[$0];print $0}'"
alias ls="ls -F"

# Prompt
export PS1='\u@\h \w \$ '
export PROMPT_DIRTRIM=2

# XDG
export XDG_DATA_DIRS=/var/lib/flatpak/exports/share:/usr/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_RUNTIME_DIR=/run/user/$(id -u)

# Misc
#export LESS=eFRX
#export PAGER=less
export TERM=st
export MOZ_ENABLE_WAYLAND=0
export NO_AT_BRIDGE=1
export GTK_CSD=0

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"

# rust
. "$HOME/.cargo/env"

export PATH="$PNPM_HOME:$HOME/.local/bin:/usr/bin"
