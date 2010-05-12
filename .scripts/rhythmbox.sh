#!/bin/bash

STREAM="$(rhythmbox-client --no-start --print-playing-format %st)"

if [ -n "$STREAM" ] ; then
	echo `rhythmbox-client --no-start --print-playing-format %st` | cut -c1-50
else
	echo `rhythmbox-client --no-start --print-playing-format %aa` - `rhythmbox-client --no-start --print-playing-format %tt` | cut -c1-50
fi
