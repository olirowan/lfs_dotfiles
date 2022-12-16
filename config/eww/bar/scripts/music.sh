#!/bin/bash

if [ -z $(playerctl metadata title) ]; then
    echo "No song playing"
elif [ -z $(playerctl metadata artist) ]; then
    echo "  $(playerctl metadata title)"
else
    echo "  $(playerctl metadata title) - $(playerctl metadata artist)"
fi
