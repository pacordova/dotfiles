#!/bin/sh

# set up cache on tmpfs ram
rm -rf $HOME/.cache
mkdir -p /tmp/$USER
ln -sf /tmp/$USER $HOME/.cache

## custom home dirs
source /home/pac/.config/user-dirs.dirs
## add local bin to path
export PATH=/home/pac/.local/bin:$PATH

# xrandr --output DP-2 --primary --scale 1x1 --pos 0x0 --auto \
# --output HDMI-0 --rotate left --pos 2560x0 --auto --scale 1x1 --set 'scaling mode' 'Full aspect'
# xrandr --output HDMI-0 --set 'scaling mode' 'Full aspect'

picom --experimental-backends --backend glx --xrender-sync-fence --refresh-rate 144 --blur-method dual_kawase --vsync -f -D 5 -b &
exec startxfce4

# for twm
#feh --bg-scale /home/pac/av/img/papes/wall1.png &
#xbattbar -a &
#polybar -c $HOME/.config/polybar/config.ini &
#exec monsterwm | mopag
