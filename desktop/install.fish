# copy ~/important BEFORE running this

~

# fish
sudo pacman -S fish
fish
chsh -s $(which fish)
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish \
    | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish

# paru
sudo pacman -S git base-devel
git clone https://aur.archlinux.org/paru.git
paru/
makepkg -i
paru -S paru
paru -R paru-debug
..
rm -rf paru

# packages
paru -S fd ripgrep dust noto-fonts-emoji pavucontrol ffmpeg yt-dlp hyprland libnotify lsd dunst \
    xdg-desktop-portal-hyprland fsel hyprpicker grimblast-git waybar cclip kitty qview librewolf-bin vesktop-bin mpv \
    hyfetch ark hyprpaper fastfetch qt6ct nwg-look noto-fonts noto-fonts-cjk noto-fonts-emoji fish-done \
    noto-fonts-extra ttf-noto-nerd ttf-koruri bat fzf mpv-mpris mpv-thumbfast-git mpv-uosc nvtop btop \
    timg dragon-drop gpu-screen-recorder kew zed ttf-lilex kleopatra signal-desktop rustup krita noisetorch-bin \
    qpwgraph kdenlive dotnet-host dotnet-runtime aspnet-runtime dotnet-sdk netcoredbg-bin rustup github-cli steam \
    nvidia-open nvidia-utils

# config
~
git clone https://github.com/envoidia/dotfiles
dotfiles/desktop/
mv .config ~
sudo mv etc/keyd/default.conf /etc/keyd/
sudo mv usr/share/applications/kew.desktop /usr/share/applications/

~/.config/
chmod +x record.fish logout_menu.fish kill_menu.fish send_clipboard.fish dunst/play_sound.fish

# themes
~
git clone https://github.com/envoidia/selene-abyss
themes/
mv btop/SeleneAbyss.theme ~/.config/btop/themes/
mv discord/selene_abyss.css ~/.config/vesktop/themes/
mv gtk-css/selene_abyss.css ~/.config/
mv ghostty/selene_abyss ~/.config/ghostty/themes/
mv textmate/selene_abyss.tmTheme ~/.config/bat/themes/

qt6ct
nwg-look
paru -R nwg-look

~/.config/
set -l EXT_DIR ~/.local/share/zed/extensions/installed

git clone https://github.com/envoidia/zed-selene-abyss
ln -s zed-selene-abyss $EXT_DIR/selene-abyss-theme

rm -rf dotfiles selene-abyss zed-selene-abyss

# zed
rustup stable default

git clone https://github.com/qwadrox/zed-netcoredbg
ln -s zed-netcoredbg $EXT_DIR/netcoredbg

git clone https://github.com/alysson-souza/zed-fish-lsp
ln -s zed-fish-lsp $EXT_DIR/fish-lsp

# MonoGame
dotnet tool install -g dotnet-mgcb
paru -S wget curl 7zip wine
sudo ln -s /usr/bin/wine /usr/local/bin/wine64
wget -qO- https://monogame.net/downloads/net9_mgfxc_wine_setup.sh | bash
echo 'MGFXC_WINE_PATH="'$HOME'/.winemonogame"' | sudo tee -a /etc/environment
paru -R 7zip wget

# ProjectCelosia
ln -s important/creative/programming/ProjectCelosia ProjectCelosia
ProjectCelosia/
dotnet tool restore

# mpv
ln -s /usr/share/mpv/scripts/uosc ~/.config/mpv/scripts/uosc
ln -s /usr/share/mpv/script-opts/uosc.conf ~/.config/mpv/script-opts/uosc.conf
ln -s /usr/share/mpv/fonts ~/.config/mpv/fonts

# misc
git config --global user.name envoidia
git config --global user.email "76633436+envoidia@users.noreply.github.com"
gh auth login
sudo systemctl enable --now keyd

# cleanup
paru -c

# manually set up remaining stuff, then reboot
