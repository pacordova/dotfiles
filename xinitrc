#!/bin/sh

# env
export PATH=$HOME/.local/bin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export XCURSOR_THEME=Adwaita
export XCURSOR_SIZE=16

# xrandr --output DP-2 --primary --scale 1x1 --pos 0x0 --auto \
# --output HDMI-0 --rotate left --pos 2560x0 --auto --scale 1x1 --set 'scaling mode' 'Full aspect'
# xrandr --output HDMI-0 --set 'scaling mode' 'Full aspect'

picom -f -b -D 5 --vsync &
dbus-launch startxfce4
