#!/bin/bash
#Written by Jarett Stevens
#MacBook5,1 (Late 2008 Aluminum Macbook)
#applesmc kernel module must be loaded

BACKLIGHT_SYS_DIR="/sys/class/leds/smc::kbd_backlight"
MAX_BRIGHTNESS="`cat ${BACKLIGHT_SYS_DIR}/max_brightness`"
CURR_BRIGHTNESS="`cat ${BACKLIGHT_SYS_DIR}/brightness`"

case "${1}" in
	  up) DELTA="+ 25" ;;
	down) DELTA="- 25" ;;
	   *) exit 1 ;;
esac 

NEW_BRIGHTNESS=`echo "${CURR_BRIGHTNESS} ${DELTA}" | bc`

if test ${NEW_BRIGHTNESS} -lt 0
	then
	NEW_BRIGHTNESS=0 
fi

if test ${NEW_BRIGHTNESS} -gt ${MAX_BRIGHTNESS}
	then
	NEW_BRIGHTNESS=${MAX_BRIGHTNESS} 
fi

echo ${NEW_BRIGHTNESS} > ${BACKLIGHT_SYS_DIR}/brightness 

exit 0
