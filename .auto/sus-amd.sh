#!/bin/bash
echo -e "amdgpu\nradeon" | sudo tee /etc/modules

echo "blacklist radeon" | sudo tee /etc/modprobe.d/blacklist-radeon.conf  
echo "blacklist radeon" | sudo tee /etc/modprobe.d/blacklist.conf

echo -e "options amdgpu si_support=1\noptions amdgpu cik_support=1" | sudo tee /etc/modprobe.d/amdgpu.conf
sudo dracut -f

echo "Need to reboot to apply changes"
