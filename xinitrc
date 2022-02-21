#!/bin/sh

# set up cache on tmpfs ram
rm -rf $HOME/.cache
mkdir -p /tmp/$USER
ln -sf /tmp/$USER $HOME/.cache

# ENVIRONMENT
source /home/pac/.config/user-dirs.dirs
export PATH=/home/pac/.local/bin:/usr/sbin:/sbin:/usr/bin:/bin
export XCURSOR_THEME=Adwaita
export XCURSOR_SIZE=16

# xrandr --output DP-2 --primary --scale 1x1 --pos 0x0 --auto \
# --output HDMI-0 --rotate left --pos 2560x0 --auto --scale 1x1 --set 'scaling mode' 'Full aspect'
# xrandr --output HDMI-0 --set 'scaling mode' 'Full aspect'

picom -f -b -D 5 --vsync &
exec startxfce4
