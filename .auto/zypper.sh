#!/bin/bash

packageArray=(
    curl
    eza
    font-manager
    gcc
    ghostty
    gh
    lutris
    make
    nemo
    neovim
    podman
    pv
    qbittorrent
    rclone
    ripgrep
    solaar
    stow
    tmux
    tlrc
    unzip
    wget
    zsh
)

packages=""
for pac in ${packageArray[@]}; do
  packages=$packages" ${pac} "
done

sudo zypper refresh
sudo zypper install $packages -y

# NVM 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

gsettings set org.cinnamon.desktop.default-applications.terminal exec ghostty

# Show password as ***
echo -e "Defaults\tpwfeedback" | sudo tee -a /etc/sudoers.d/0pwfeedback

echo "Run 'nvm install node'"
