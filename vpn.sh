#!/bin/bash
sudo apt-get update && apt-get full-upgrade -y
bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/anyconnect4.10.sh)
