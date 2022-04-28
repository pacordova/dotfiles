#!/bin/sh

export PATH=$HOME/.local/bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export XCURSOR_THEME=Adwaita
export XCURSOR_SIZE=16

picom -f -b -D 5 --vsync &
dbus-launch startxfce4
