#!/bin/bash

packageArray=(
  "zsh"
  "gh"
  "stow"
  "gcc"
  "python3"
  "curl"
  "fd-find"
  "eza"
  "rgrep"
  "wget"
  "tldr"
  "qbittorrent"
  "podman"
  "flatpak"
  "gnome-software-plugin-flatpak"
  "make"
  "ripgrep"
  "unzip"
  "xclip"
  "pv"
  "vim"
  "solaar"
  "nemo"
  "font-manager"
  "tmux"
)

packages=""
for pac in ${packageArray[@]}; do
  packages=$packages" ${pac} "
done

sudo apt update
sudo apt install $packages -y

# Neovim
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt install neovim -y

# NVM 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
sudo apt update && sudo apt install extrepo -y

# Librewolf
sudo extrepo enable librewolf
sudo apt update && sudo apt install librewolf -y

# Rclone 
wget https://downloads.rclone.org/v1.69.1/rclone-v1.69.1-linux-amd64.deb
sudo dpkg -i ./rclone-v1.69.1-linux-amd64.deb
rm -rf rclone-v1.69.1-linux-amd64.deb

# Signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
rm -rf signal-desktop-keyring.gpg

# Steam
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo apt install ./steam.deb -y
rm -rf steam.deb

# Lutris
# wget https://github.com/lutris/lutris/releases/download/v0.5.18/lutris_0.5.18_all.deb
# sudo apt install ./lutris_0.5.18_all.deb -y
# rm -rf lutris_0.5.18_all.deb 
#
gsettings set org.cinnamon.desktop.default-applications.terminal exec ghostty

# Show password as ***
echo -e "Defaults\tpwfeedback" | sudo tee -a /etc/sudoers.d/0pwfeedback

# Download the Mullvad signing key
sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc

# Add the Mullvad repository server to apt
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mullvad.list

# Install the package
sudo apt update
sudo apt install mullvad-vpn

echo "Run 'nvm install node'"
