#!/usr/bin/env fish

echo $argv >/tmp/dbg.txt

if test $argv[2] = expunged
    mpv ~/.config/dunst/wife.mp3
else if test $argv[1] = Signal
    mpv ~/.config/dunst/signal.mp3
else
    mpv ~/.config/dunst/discord.mp3
end
