#!/usr/bin/env fish

set -l sound ~/.config/dunst/discord.mp3

if test $argv[2] = expunged
    set sound ~/.config/dunst/wife.mp3
end

mpv $sound