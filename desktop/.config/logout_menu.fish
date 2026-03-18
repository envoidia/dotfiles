#!/usr/bin/env fish

switch $(echo -e "shutdown\nreboot\nlogout" | fsel --dmenu)
    case shutdown
        shutdown now
    case reboot
        reboot
    case logout
        command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit
end