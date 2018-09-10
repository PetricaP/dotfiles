#!/bin/bash

pactl -- set-sink-volume 0 +10% && pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' | while read OUTPUT; do notify-send Volume "Up $OUTPUT " -t 500; done

