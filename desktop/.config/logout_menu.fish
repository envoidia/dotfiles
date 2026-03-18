#!/usr/bin/env fish

switch $(echo -e "Cancel\nLogout\nShutdown\nRestart" | fsel --dmenu)
    case Logout
        command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit
    case Shutdown
        shutdown now
    case Restart
        reboot
end