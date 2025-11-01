#!/bin/bash
# MEGA
echo "Obsidian"
rclone copy -P -L /home/joyoung/Obsidian/ mega:Obsidian
echo "Torrent"
rclone copy -P -L /mnt/torrent1/torrent/ mega:torrent

# Local
echo "Kavita"
rclone copy -P -L -c ~/Kavita/ /mnt/external/RClone/Kavita/

echo "Mangas"
rclone copy -P -L -c ~/Documents/Mangas/ /mnt/external/RClone/Mangas/
