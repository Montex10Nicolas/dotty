#!/bin/bash

/usr/bin/find . -xtype l -delete
/usr/bin/find /mnt/torrent1/ -type d -empty -delete
/usr/bin/find /mnt/torrent2/ -type d -empty -delete
/usr/bin/find /mnt/torrent3/ -type d -empty -delete
/usr/bin/find "$HOME/Videos/" -type d -empty -delete
