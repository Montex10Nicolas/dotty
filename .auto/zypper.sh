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
  "ripgrep"
  "wget"
  "tlrc"
  "qbittorrent"
  "podman"
  "podman-compose"
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
  "rclone"
)

packages=""
for pac in ${packageArray[@]}; do
  packages=$packages" ${pac} "
done

sudo zypper update
sudo zypper install -y $packages

# NVM 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
sudo zypper update 

# Rclone 
wget https://downloads.rclone.org/v1.69.1/rclone-v1.69.1-linux-amd64.deb
sudo dpkg -i ./rclone-v1.69.1-linux-amd64.deb
rm -rf rclone-v1.69.1-linux-amd64.deb

gsettings set org.cinnamon.desktop.default-applications.terminal exec ghostty

# Librewolf
sudo rpm --import https://rpm.librewolf.net/pubkey.gpg

sudo zypper ar -ef https://rpm.librewolf.net librewolf

sudo zypper ref

# Signal
zypper addrepo https://download.opensuse.org/repositories/network:im:signal/openSUSE_Tumbleweed/network:im:signal.repo
zypper refresh
zypper install signal-desktop

sudo zypper in librewolf
# Show password as ***
echo -e "Defaults\tpwfeedback" | sudo tee -a /etc/sudoers.d/0pwfeedback
echo "Run 'nvm install node'"
