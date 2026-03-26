#!/bin/sh

# pulseaudio daemon
pulseaudio -D

# nvidia-settings
nvidia-settings --assign={AllowFlipping=0,SyncToVBlank=0,TextureClamping=0} &

# picom
#picom -b

# tmux session
#tmux new-session -d &

# xfce
exec startxfce4
