OBOB#!/bin/sh

# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#



# Set mouse cursor and background colour
#xsetroot -cursor_name left_ptr -solid '#262729' &

xsetroot -cursor_name left_ptr -solid '#000C1A' &

# Set xflux for Istanbul
xflux -l 41.02 -g 28.58 &

#redshift -l 41.0136:28.955&

# Set unclutter to remove the mouse
unclutter &

#gnome-keyring-daemon&


# Load gnome settings
#gnome-settings-daemon

xbindkeys&

# wicd

#sleep 5 && wicd-gtk &

#urxvt daemon
urxvtd &

# Setting Background image with feh
sh /home/yigit/.fehbg &

# ssh-agent
#eval `ssh-agent`

#gnome-terminal -e ssh-add &

# Set Wallpaper
#/home/yigit/set_wallpaper.py&
# Set the trayer
#sleep 3 && trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand false --width 60 --height 8 --transparent true --tint 0x262729  --widthtype pixel --alpha 0 &

#xcompmgr
#xcompmgr -c &
compton -c -C -t-5 -l-5 -r4.2 -o.55 &

xautolock -time 2 -locker slock&

# Add the 3 lines below to Convert caps-lock into Control
xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keysym Caps_Lock = Control_R'
xmodmap -e 'add Control = Control_R'

xmodmap -e 'remove Control = Control_L'
xmodmap -e 'keysym Control_L = Caps_Lock'
xmodmap -e 'add Lock = Caps_Lock'

xmodmap -e 'keycode 133 = Alt_L'
xmodmap -e 'keycode 64 = Super_L'


# Launch WM
#exec startxfce4
exec xmonad

