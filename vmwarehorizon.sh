#!/bin/bash
cd /home/$USER
sudo apt update -y
sudo apt install python3-pip -f
sudo pip install gdown -f
gdown https://drive.google.com/uc?id=1sdcAnQvAii7ChOBiUgH55SsJFeexyFwQ
sudo apt-get install VMware-Horizon-Client-2306-8.10.0-21964631.x64.deb -y
sudo apt-get update && apt-get upgrade
sudo rm VMware-Horizon-Client-2306-8.10.0-21964631.x64.deb -f


#--------------------------------------
#VMware horizon file stored at: ScriptBU google drive
