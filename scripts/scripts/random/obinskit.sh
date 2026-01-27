#!/bin/bash
sudo dpkg -i ~/Downloads/ObinsKit_1.2.11_x64.deb
sudo /opt/ObinsKit/obinskit --no-sandbox
sudo rm -rf /opt/ObinsKit
sudo apt remove -y obinskit
