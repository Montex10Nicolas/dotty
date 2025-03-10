#!/bin/bash
#
#
sudo apt install git
git clone https://github.com/neovim/neovim
cd neovim
sudo apt install make cmake
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build
sudo make install

sudo apt install gcc python3
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
echo "Run 'nvm install node'"
