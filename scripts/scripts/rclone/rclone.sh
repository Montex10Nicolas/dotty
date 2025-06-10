#!/bin/bash
rclone copy -P -L /home/jumong/Obsidian/ mega:Obsidian
rclone copy /mnt/torrent1/torrent/ mega:torrent
rclone copy -P /home/jumong/Documents/ mega:Documents
