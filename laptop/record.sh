#!/usr/bin/env bash

if pgrep -f "gpu-screen-recorder" >/dev/null; then
    pkill -SIGINT -f "gpu-screen-recorder"
    notify-send "gpu-screen-recorder" "Recording finished"
else
    "gpu-screen-recorder" -w eDP-1 -f 60 -cursor no -a defaultoutput -o "$HOME/videos/$(date +"%d-%m-%Y%H-%M-%S").mp4 -fallback-cpu-encoding yes"
fi