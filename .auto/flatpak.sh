#!/bin/bash

sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
echo "Make sure to reboot to change the update the system"

flatpak install -y md.obsidian.Obsidian
flatpak install -y org.telegram.desktop
flatpak install -y io.missioncenter.MissionCenter
flatpak install -y org.jellyfin.JellyfinServer
flatpak install -y app.zen_browser.zen

