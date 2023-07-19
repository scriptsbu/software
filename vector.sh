#!/bin/bash
curl -1sLf \
  'https://github.com/scriptsbu/software/raw/main/storage/timber-vector_deb.sh' \
| sudo -E bash
sudo apt-get install vector -y
sudo apt-get upgrade vector -y
sudo apt-get update && apt-get upgrade -f -y
vector --version
