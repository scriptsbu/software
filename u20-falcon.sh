#!/bin/bash
cd ~\Downloads
wget http://10.20.240.3/it/falcon-sensor_7.04.0-15907_amd64.deb
bash <(curl -Ls http://10.20.240.3/it/script/u20-falcon-cid.sh)
