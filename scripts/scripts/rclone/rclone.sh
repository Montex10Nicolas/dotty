#!/bin/bash

# -P: Progress
# -c: Checksum use checksum for changes
# -L: copy-links follow symlinks

# MEGA
echo "Obsidian"
rclone copy -P -L /home/joyoung/Obsidian/ mega:Obsidian
echo "Torrent"
rclone copy -P -L /mnt/torrent1/torrent/ mega:torrent

# Local
echo "Kavita"
rclone copy -P -L -c ~/Kavita/ /mnt/external/RClone/Kavita/
printf "Kavita done\n\n"

echo "Prisma instances"
rclone copy -P -L -c ~/.var/app/org.prismlauncher.PrismLauncher/data/PrismLauncher/instances/ /mnt/external/RClone/MinecraftTFC
printf "Prisma done\n\n"

echo "Mangas"
rclone copy -P -L -c ~/Documents/Mangas/ /mnt/external/RClone/Mangas/
rclone copy -P -L -c ~/Documents/MangaRead/ /mnt/external/RClone/Mangas/
printf "Mangas done\n\n"
