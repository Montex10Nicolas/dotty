#!/bin/bash

sudo cp ./split_tunnel.service /etc/systemd/system/split_tunnel.service

sudo mkdir /etc/iproute2
sudo echo "100 vpn_tables" | tee /etc/iproute2/rt_tables

sudo systemctl enable split_tunner.service
sudo systemctl start split_tunnel.service
