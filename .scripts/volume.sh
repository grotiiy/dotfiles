#!/bin/sh
#Wwritten by Jarett Stevens
#MacBook5,1 (Late 2008 Aluminum Macbook)
#helpful output:
#amixer
#amixer controls
#user should be in group audio 

CHANNEL="Master" 
VOLUME_SOUND="/usr/share/pommed/click.wav"
case "${1}" in
	    up) amixer -q set ${CHANNEL} 1+ ;; 
	  down) amixer -q set ${CHANNEL} 1- ;; 
	toggle) amixer -q set ${CHANNEL} toggle ;;
	     *) exit 1 ;;
esac

test -e ${VOLUME_SOUND} && aplay ${VOLUME_SOUND}

exit 0

