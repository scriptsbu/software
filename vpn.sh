#!/bin/bash
sudo apt-get update && apt-get full-upgrade -y
wget https://github.com/scriptsbu/software/raw/main/exe/anyconnect4.10.sh /share
bash /share/cisco/anyconnect4.10.sh
rm /share/cisco
