#!/usr/bin/env bash
if pgrep -f "gpu-screen-recorder" >/dev/null; then
    pkill -SIGINT -f "gpu-screen-recorder"
else
    "gpu-screen-recorder" -w DP-2 -f 60 -a default_output -o "$HOME/videos/$(date +"%d-%m-%Y_%H-%M-%S").mp4"
fi