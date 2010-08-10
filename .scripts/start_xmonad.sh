#!/bin/sh
 
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

source ~/.bashrc &

#sleep 3 && trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand false --width 4 --height 8 --transparent true --alpha 220 --widthtype request &
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand false --width 60 --height 8 --transparent true --tint 0x262729  --widthtype pixel --alpha 0 &


# Start URxvt daemon so we can quickly open the other clients
urxvtd -q -o -f &
#emacs --daemon
#[[ -x "/usr/bin/numlockx" ]] && numlockx &
#[[ -x "/usr/bin/unclutter" -a -z "`pidof unclutter`" ]] && \
#    unclutter -idle 5 -root&
 
 
# Set mouse cursor and background colour
xsetroot -cursor_name left_ptr -solid '#262729' &

# Load gnome settings

#gnome-settings-daemon


# Network Manager
if [ -x /usr/bin/nm-applet ] ; then
   sleep 3 && nm-applet --sm-disable &
fi

sh /home/yigit/.fehbg &

# Launch WM
exec ssh-agent ck-launch-session xmonad


#feh --bg-scale  /pkd/Resimler/duvar/02137_stonehenge_2560x1440.jpg 

#exec ck-launch-session xmonad



#sleep 3 && trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand false --width 4 --height 8 --transparent true --alpha 220 --widthtype request & 

