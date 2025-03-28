#!/bin/bash

sudo cp ./split_tunnel.service /etc/systemd/system/split_tunnel.service

sudo systemctl enable split_tunner.service
sudo systemctl start split_tunnel.service
