#!/bin/bash
sudo apt-get update
wget https://github.com/scriptsbu/software/raw/main/storage/pc-print-deploy-client%5Bpapercut%5D.deb
sudo apt installpc-print-deploy-client[papercut].deb -f -y
