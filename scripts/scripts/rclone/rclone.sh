#!/bin/bash
rclone copy -P $HOME/Obsidian/ mega:Obsidian
rclone copy /mnt/torrent1/torrent/ mega:torrent
rclone copy -P $HOME/actualbudget/ mega:actualbudget
