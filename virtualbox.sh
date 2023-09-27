#!/bin/bash
sudo apt-get update
sudo apt-get install virtualbox -y -f
sudo pkill virtualbox -f
sudo apt-get update
sudo apt install virtualbox-ext-pack
sudo dpkg --configure -a
dpkg -s virtualbox | grep '^Version:'
virtualbox
