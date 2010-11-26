#!/bin/sh
 
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#


# Set the trayer
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand false --width 60 --height 8 --transparent true --tint 0x262729  --widthtype pixel --alpha 0 &

# Set mouse cursor and background colour
xsetroot -cursor_name left_ptr -solid '#262729' &

# Set xflux for Istanbul
xflux -l 41.02 -g 28.58 &

# Load gnome settings
#gnome-settings-daemon

# Network Manager
if [ -x /usr/bin/nm-applet ] ; then
   sleep 3 && nm-applet --sm-disable &
fi

# Setting Background image with feh
sh /home/yigit/.fehbg &

# ssh-agent
eval `ssh-agent`
gnome-terminal -e ssh-add &

# Launch WM
exec ck-launch-session xmonad

