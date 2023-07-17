#!/bin/bash
sudo apt-get update && apt-get full-upgrade -y
wget https://github.com/scriptsbu/software/blob/main/storage/anyconnect-linux64-4.10.01075-core-vpn-webdeploy-k9.sh
sudo bash anyconnect-linux64-4.10.01075-core-vpn-webdeploy-k9.sh
