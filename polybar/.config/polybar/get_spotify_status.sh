#!/bin/bash

# Get metadata from any MPRIS player
STATUS=$(playerctl status 2>/dev/null)

if [[ "$STATUS" == "Playing" || "$STATUS" == "Paused" ]]; then
    ARTIST=$(playerctl metadata artist 2>/dev/null)
    TITLE=$(playerctl metadata title 2>/dev/null)

    if [[ -n "$ARTIST" && -n "$TITLE" ]]; then
        echo "$TITLE - $ARTIST"
    else
        echo "Playing"
    fi
else
    echo ""
fi


