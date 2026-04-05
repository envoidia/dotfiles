#!/usr/bin/env fish

set -l program $(ps -eo comm= | fsel --dmenu)
pkill $program
notify-send "killed $program"