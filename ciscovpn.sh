#!/bin/bash
sudo apt-get update && apt-get upgrade -f -y
wget https://github.com/scriptsbu/software/raw/main/storage/anyconnect-linux64-4.10.01075-core-vpn-webdeploy-k9.sh
sudo bash anyconnect-linux64-4.10.01075-core-vpn-webdeploy-k9.sh && sleep 2 m && sudo rm -r anyconnect-linux64-4.10.01075-core-vpn-webdeploy-k9.sh -f
sleep 10
sudo apt-get update && apt-get upgrade -f -y
exit


#--------------------------------------
#Cisco file stored at: https://github.com/scriptsbu/software/raw/main/storage/
