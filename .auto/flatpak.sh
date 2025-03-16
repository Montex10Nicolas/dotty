#!/bin/bash

if ! command -v flatpak 2>&1 > /dev/null
then
  echo "Flatpak is not installed, run the installer for your package manager"
  exit
fi

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install -y md.obsidian.Obsidian
flatpak install -y org.telegram.desktop
flatpak install -y io.missioncenter.MissionCenter
flatpak install -y org.jellyfin.JellyfinServer
flatpak install -y app.zen_browser.zen

echo "Make sure to reboot to change the update the system"
