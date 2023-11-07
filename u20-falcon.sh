#!/bin/bash
cd ~\Downloads
wget http://10.20.240.3/it/falcon-sensor_7.04.0-15907_amd64.deb
sudo dpgk -i falcon-sensor_7.04.0-15907_amd64.deb
sudo /opt/CrowdStrike/falconctl -s --cid=<6C145CE47FC14784904D6E1B2F9B5A4C-5F>
service falcon-sensor start
systemctl status falcon-sensor
ps -e | grep falcon-sensor
dpkg -l grep falcon-sensors
