#!/bin/bash
# Some utils
sudo apt install zsh gh stow gcc python3 curl fd-find eza rgrep wget tldr -y

# Some programs
sudo apt install qbittorrent -y

# NVM 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
sudo apt update && sudo apt install extrepo -y

# Librewolf
sudo extrepo enable librewolf
sudo apt update && sudo apt install librewolf -y

# Rclone 
wget https://downloads.rclone.org/v1.69.1/rclone-v1.69.1-linux-amd64.deb
sudo apt dpkg -i ./rclone-v1.69.1-linux-amd-64.deb
rm -rf rclone-v1.69.1-linux-amd-64.deb

sudo apt-get -y install podman

# Signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

# Steam
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo apt install ./steam.deb -y
rm -rf steam.deb

# Lutris
wget https://github.com/lutris/lutris/releases/download/v0.5.18/lutris_0.5.18_all.deb
sudo apt install ./lutris_0.5.18_all.deb -y
rm -rf lutris_0.5.18_all.deb 

sudo apt autoremove

echo "Run 'nvm install node'"
