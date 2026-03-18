#!/usr/bin/env fish

switch $(echo -e "cancel\nlogout\nshutdown\nreboot" | fsel --dmenu)
    case logout
        command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit
    case shutdown
        shutdown now
    case reboot
        reboot
end