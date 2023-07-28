#!/bin/bash
cd /home/$USER
sudo apt update -y
sudo wget https://drive.google.com/uc?export=download&id=1sdcAnQvAii7ChOBiUgH55SsJFeexyFwQ&confirm=t&uuid=4cea855a-1e1e-4e30-a4ab-28533211d0cb&at=ALt4Tm3iAkts24ckhpq4-rBLl_Z2:1690568116943
sudo apt-get install VMware-Horizon-Client-2306-8.10.0-21964631.x64.deb -y
sudo apt-get update && apt-get upgrade
sudo rm VMware-Horizon-Client-2306-8.10.0-21964631.x64.deb -f