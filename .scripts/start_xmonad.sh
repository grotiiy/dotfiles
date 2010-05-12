#!/bin/sh
 
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#


trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand false --width 4 --height 8 --transparent true --alpha 220 --widthtype request &

# Start URxvt daemon so we can quickly open the other clients
#urxvtd -q -o -f
#[[ -x "/usr/bin/numlockx" ]] && numlockx &
#[[ -x "/usr/bin/unclutter" -a -z "`pidof unclutter`" ]] && \
#    unclutter -idle 5 -root&
 
 
# Set mouse cursor and background colour
#xsetroot -cursor_name left_ptr -solid '#090909' &

# Load gnome settings
gnome-settings-daemon

# Network Manager
if [ -x /usr/bin/nm-applet ] ; then
   nm-applet --sm-disable &
fi

 
# Launch WM
exec xmonad

