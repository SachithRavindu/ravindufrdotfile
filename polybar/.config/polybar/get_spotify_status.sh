#!/bin/bash

PLAYER="spotify"  # Make sure `playerctl -l` shows "spotify"
FORMAT="{{ title }} - {{ artist }}"

while true; do
    STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)

    if [ $? -ne 0 ]; then
        echo "No player"
    elif [ "$STATUS" = "Playing" ] || [ "$STATUS" = "Paused" ]; then
        playerctl --player=$PLAYER metadata --player=$PLAYER --format "$FORMAT"
    else
        echo "No music"
    fi

    sleep 1
done

