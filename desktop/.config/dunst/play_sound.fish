#!/usr/bin/env fish

if test $argv[2] = expunged
    mpv ~/.config/dunst/wife.mp3
else
    mpv ~/.config/dunst/discord.mp3
end