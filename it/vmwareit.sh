#!/bin/bash
wget http://10.20.240.3/it/VMware-Horizon-Client-2306-8.10.0-21964631.x64.deb ~/Downloads 
sudo apt-get install ~/Downloads/VMware-Horizon-Client-2306-8.10.0-21964631.x64.deb -y -f
sleep 5
rm ~/Downloads/VMware-Horizon-Client-2306-8.10.0-21964631.x64.deb
#--------------------------------------
#VMware-Horizon-Client file stored at: t14-aus-it-server
