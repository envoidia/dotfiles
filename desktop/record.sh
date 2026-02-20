#!/usr/bin/env bash

if pgrep -f "gpu-screen-recorder" >/dev/null; then
    pkill -SIGINT -f "gpu-screen-recorder"
    notify-send "gpu-screen-recorder" "Recording finished"
else
    "gpu-screen-recorder" -w DP-2 -f 60 -cursor no -a default_output -o "$HOME/videos/$(date +"%d-%m-%Y_%H-%M-%S").mp4"
fi