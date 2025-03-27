#!/bin/bash
# Replace with the IP address of the application's server
APP_IP="192.168.1.23"
APP_PORT="46072"

# Replace with the Mullvad VPN interface name (usually tun0)
VPN_INTERFACE="wg0-mullvad"

# Flush existing rules
sudo iptables -F
sudo iptables -t nat -F
sudo iptables -X

# Allow traffic to the qBittorrent through the VPN
sudo iptables -t nat -A POSTROUTING -d $APP_IP -p tcp --dport $APP_PORT -o $VPN_INTERFACE -j MASQUERADE

# Route all other traffic through the default interface
sudo ip route add default via 192.168.1.1 dev enp6s0 

# Mark packets for qBittorrent
sudo iptables -t mangle -A OUTPUT -d $APP_IP -p tcp --dport $APP_PORT -j MARK --set-mark 1
sudo ip route add default via 192.168.1.1 dev enp6s0 

# Add a rule to route marked packets through the VPN
sudo ip rule add fwmark 1 table vpn_table

# Add a routing table for the VPN
sudo ip route add default dev $VPN_INTERFACE table vpn_table

echo "Split tunneling setup complete."

