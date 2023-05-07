#!/bin/sh

sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings xorg-server xorg-xinit xorg-xkill xorg-xsetroot xorg-xbacklight xorg-xprop \
     noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-jetbrains-mono ttf-joypixels ttf-font-awesome \
     sxiv mpv   \
     man-db xwallpaper python-pywal xclip maim \
     p7zip-gui xdotool papirus-icon-theme brightnessctl  \
     dosfstools ntfs-3g git  zsh pipewire pipewire-pulse \
     neovim arc-gtk-theme  \
     picom libnotify dunst slock jq pamixer  \
     bluez bluez-utils gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb mtpfs udiskie udisks2 xdg-user-dirs \
	 brave-bin yay-bin paru-bin linux-wifi-hotspot vibrantlinux \
	 archlinux-logout-git freedownloadmanager font-manager zram-generator \
	 thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman \

cp -r config/ ~/.config/

mkdir -p ~/.local/src/dwm
mkdir -p ~/.local/src/st
mkdir -p ~/.local/src/dwmblocks
mkdir -p ~/.local/src/dmenu

cp -r src/dwm ~/.local/src/dwm
sudo make -C ~/.local/src/dwm install

cp -r src/dmenu ~/.local/src/dmenu
sudo make -C ~/.local/src/dmenu install

cp -r src/dwmblocks ~/.local/src/dwmblocks
sudo make -C ~/.local/src/dwmblocks install

cp -r src/st ~/.local/src/st
sudo make -C ~/.local/src/st install

sudo cp dwm.desktop /usr/share/xsessions
sudo cp -r bin/ /usr/local/bin