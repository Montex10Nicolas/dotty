#!/bin/bash

if ! command -v tmux 2>&1 > /dev/null; then
  echo "You need to install tmux"
  exit
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
