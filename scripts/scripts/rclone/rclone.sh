#!/bin/bash

# -P: Progress
# -c: Checksum use checksum for changes
# -L: copy-links follow symlinks

# MEGA
echo "Obsidian Mega"
rclone copy -P -L /home/joyoung/Obsidian/ mega:Obsidian
echo "Torrent Mega"
rclone copy -P -L /mnt/torrent1/torrent/ mega:torrent

# Watcharr
echo "Watcharr Mega"
rclone copy -P -L -c ~/Watcharr mega:Watcharr
