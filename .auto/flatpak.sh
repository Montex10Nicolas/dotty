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
flatpak install -y com.valvesoftware.Steam
flatpak install -y net.lutris.Lutris
flatpak install -y com.heroicgameslauncher.hgl
flatpak install -y com.mattjakeman.ExtensionManager
flatpak install -y com.discordapp.Discord
flatpak install -y dev.vencord.Vesktop
flatpak install -y com.github.scrivanolabs.scrivano
flatpak install -y io.mpv.Mpv

sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"

echo "Make sure to reboot to change the update the system"
