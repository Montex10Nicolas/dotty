#!/bin/bash
rclone copy -P -L /home/joyoung/Obsidian/ mega:Obsidian
rclone copy /mnt/torrent1/torrent/ mega:torrent
rclone copy -P /home/joyoung/Documents/ mega:Documents
