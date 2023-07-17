#!/bin/bash
sudo apt-get update
google-chrome https://torc.atlassian.net/wiki/download/attachments/230037450/pc-print-deploy-client%5Bpapercut.torc.tech%5D.deb?version=2&modificationDate=1676320448853&cacheVersion=1&api=v2
sudo apt-get install ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb -y -f
rm ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb
