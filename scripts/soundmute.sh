#!/bin/bash

pactl -- set-sink-mute 0 toggle && pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' | while read OUTPUT; do notify-send Volume "Mute $OUTPUT " -t 500; done
