#!/bin/bash

if ! command -v tmux 2>&1 > /dev/null; then
  echo "You need to install tmux"
  exit
fi

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

echo "Run prefix+I to install the plugins inside tmux"
