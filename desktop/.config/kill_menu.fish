#!/usr/bin/env fish

set -l program $(ps -eo comm= | fsel --dmenu)

if test -n "$program"
    pkill $program
    notify-send "killed $program"
end