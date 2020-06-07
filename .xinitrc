#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xresources ]] && xrdb - merge ~/.Xresources

compton -b &
#numlockx &
#unclutter &
#xbindkeys &
#nitrogen --restore &
#lxpolkit &
#parcellite &
#urxvtd -q -o -f
xrandr --output Virtual1 --mode 1920x1200 &
wal -i ~/.wallpaper.jpg &
feh ~/.wallpaper.jpg &

#exec herbstluftwm --locked
sxhkd &
exec bspwm

