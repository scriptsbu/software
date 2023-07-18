#!/bin/bash
echo -e "\x1b[41;37m A browser will launch Confluence to access a file, login, close the browser window, and return to this screen. Please press [ENTER] to proceed.\x1b[K\x1b[0m"
read -p ""
google-chrome https://torc.atlassian.net/
echo -e "\x1b[41;37m A browser will launch Confluence to download a file; Please press [ENTER] to proceed and return to this screen.\x1b[K\x1b[0m"
read -p ""
google-chrome https://torc.atlassian.net/wiki/download/attachments/230037450/pc-print-deploy-client%5Bpapercut.torc.tech%5D.deb?version=2&modificationDate=1676320448853&cacheVersion=1&api=v2
sleep 3
echo -e "\x1b[41;37m Press [Enter] key after the download is completed.\x1b[K\x1b[0m"
read -p ""
sudo apt-get install ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb -y -f
sleep 5
rm ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb
/opt/PaperCutPrintDeployClient/initialise.sh -w
