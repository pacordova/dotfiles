#!/bin/sh
alsactl -UL restore
#pulseaudio -D
picom -b
xset s off -dpms
exec startxfce4
