#!/bin/bash
sudo apt install zsh git  gh stow gcc python3 curl fd-find eza rgrep

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
echo "Run 'nvm install node'"

sudo apt update && sudo apt install extrepo -y

sudo extrepo enable librewolf

sudo apt update && sudo apt install librewolf -y

