#!/usr/bin/env fish

if string match -q 'text/*' $(wl-paste -l 2>/dev/null)
    kdeconnect-cli -n "Galaxy S20 FE 5G" --send-clipboard
    notify-send "Sent clipboard to phone"
    return
end

notify-send "Unable to send non-text clipboard"