#!/bin/bash
sudo apt-get update
read -p "A browser will launch Confluence to access a file, login, and return to this screen. Please press [ENTER] to proceed."
google-chrome https://torc.atlassian.net/wiki/download/attachments/230037450/pc-print-deploy-client%5Bpapercut.torc.tech%5D.deb?version=2&modificationDate=1676320448853&cacheVersion=1&api=v2 -f
sleep 3
read -p "Press [Enter] key after the download is completed."
sudo apt-get install ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb -y -f
sleep 5
rm ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb
/opt/PaperCutPrintDeployClient/initialise.sh -w
