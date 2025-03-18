#!/bin/bash

if ! command -v tmux 2>&1 > /dev/null; then
  echo "You need to install tmux"
  exit
fi


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
echo run '~/.tmux/plugins/tpm/tpm' | tee ~/.tmux.conf
