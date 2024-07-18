#!/bin/sh

picom -f -b -D 2 --backend glx --vsync &
/usr/bin/startxfce4
