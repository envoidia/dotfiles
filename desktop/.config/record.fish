#!/usr/bin/env fish

if pgrep -f "gpu-screen-recorder" > /dev/null
    pkill -SIGINT -f "gpu-screen-recorder"
    notify-send "gpu-screen-recorder" "Recording finished"
else
    argparse 'r/region' -- $argv
    or return

    set -l region DP-2

    if set -q _flag_r
        set region $(slurp | string replace -r '(\d+),(\d+) (\S+)' '$3+$1+$2')
    end

    "gpu-screen-recorder" -w $region -f 60 -cursor no -a default_output -o "$HOME/videos/$(date +"%d-%m-%Y_%H-%M-%S").mp4"
end