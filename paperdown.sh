#!/bin/bash
sudo apt-get update
terminator -- sleep 3 && read -p "Press [Enter] key to after download" && sudo apt-get install ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb -y -f && sleep 5 && rm ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb
google-chrome https://torc.atlassian.net/wiki/download/attachments/230037450/pc-print-deploy-client%5Bpapercut.torc.tech%5D.deb?version=2&modificationDate=1676320448853&cacheVersion=1&api=v2
