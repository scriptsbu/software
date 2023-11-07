#!/bin/bash
cd ~/Downloads
wget http://10.20.240.3/it/falcon-sensor_7.04.0-15907_amd64.deb
wget http://10.20.240.3/it/script/u20-falcon-cid.sh
bash u20-falcon-cid.sh
sudo rm -r u20-falcon-cid.sh
