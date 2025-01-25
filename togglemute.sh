#!/bin/bash

pactl set-source-mute @DEFAULT_SOURCE@ toggle

MUTED=$(pactl get-source-mute @DEFAULT_SOURCE@ | grep "tak")

if [ "$MUTED" ]; then
    paplay /path/to/mutesound/mute.mp3
else
    paplay /path/to/unmutesound/unmute.mp3
fi
