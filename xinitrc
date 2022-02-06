#!/bin/sh

# set up cache on tmpfs ram
rm -rf $HOME/.cache
mkdir -p /tmp/$USER
ln -sf /tmp/$USER $HOME/.cache

## custom home dirs
source /home/pac/.config/user-dirs.dirs
## add local bin to path
export PATH=/home/pac/.local/bin:$PATH
export XCURSOR_THEME=Adwaita
export XCURSOR_SIZE=16

# xrandr --output DP-2 --primary --scale 1x1 --pos 0x0 --auto \
# --output HDMI-0 --rotate left --pos 2560x0 --auto --scale 1x1 --set 'scaling mode' 'Full aspect'
# xrandr --output HDMI-0 --set 'scaling mode' 'Full aspect'

picom -f -b -D 5\
    --refresh-rate 144\
    --blur-method dual_kawase\
    --vsync &
exec startxfce4

# for twm
#feh --bg-scale /home/pac/av/img/papes/wall1.png &
#xbattbar -a &
#polybar -c $HOME/.config/polybar/config.ini &
#exec monsterwm | mopag
