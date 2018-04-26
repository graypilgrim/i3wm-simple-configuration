#!/bin/sh

MUTE=`pactl list sinks | grep Mute | awk '{print $2}'`

if [ $MUTE == "yes" ]; then
	echo "MUTE"
	exit 0
fi

pactl list sinks | grep 'front-left:' | awk '{print $5}'

