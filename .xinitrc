#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export BROWSER=chromium-browser
/home/yigit/.scripts/start_xmonad.sh
#exec gnome-session
