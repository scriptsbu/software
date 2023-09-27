#!/bin/bash
echo -e "\x1b[41;37mWhen prompted, Hit ESC key at the Pink screen and accept. Press ENTER to continue.\x1b[K\x1b[0m"
read -p ""
sudo apt-get update
sudo apt-get install virtualbox -y -f
sudo pkill virtualbox -f
sudo apt-get update
sudo apt install virtualbox-ext-pack
sudo dpkg --configure -a
dpkg -s virtualbox | grep '^Version:'
virtualbox
