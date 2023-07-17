#!/bin/bash
sleep 3
read -p "Press [Enter] key to after download"
sudo apt-get install ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb -y -f
sleep 5
rm ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb
