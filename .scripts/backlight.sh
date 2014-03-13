#!/bin/bash
#Written by Jarett Stevens
#MacBook5,1 (Late 2008 Aluminum Macbook)
#Need the following in xorg.conf for adjusting brightness with the
#nvidia driver while running X (Section "Device"):
#    Option "RegistryDwords" "EnableBrightnessControl=1"
#
# also apple_bl kernel module must be loaded
#

BACKLIGHT_SYS_DIR="/sys/class/backlight/acpi_video0"
MAX_BRIGHTNESS="`cat ${BACKLIGHT_SYS_DIR}/max_brightness`"
CURR_BRIGHTNESS="`cat ${BACKLIGHT_SYS_DIR}/brightness`"

case "${1}" in
	  up) DELTA="+ 1" ;;
	down) DELTA="- 1" ;;
	   *) exit 1 ;;
esac

NEW_BRIGHTNESS=`echo "${CURR_BRIGHTNESS} ${DELTA}" | bc`

if test ${NEW_BRIGHTNESS} -lt 1 -o ${NEW_BRIGHTNESS} -gt ${MAX_BRIGHTNESS}
	then
	exit 1
else
	echo ${NEW_BRIGHTNESS} > ${BACKLIGHT_SYS_DIR}/brightness
fi

exit 0
