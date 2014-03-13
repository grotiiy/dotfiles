#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export LC_ALL=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export BROWSER=chromium

xset +fp /usr/share/fonts/local
xset +fp /home/yigit/.fonts
xset fp rehash


if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

/home/yigit/.scripts/start_xmonad.sh
#exec gnome-session
