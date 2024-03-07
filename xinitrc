#!/bin/sh

export PATH=$HOME/.local/bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export XCURSOR_THEME=Adwaita
export XCURSOR_SIZE=16

xset m 0 0 
picom -f -b -D 2 --backend glx --vsync &
exec startxfce4
