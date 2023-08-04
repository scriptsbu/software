#!/bin/bash
wget http://10.20.240.3/it/pc-print-deploy-client[papercut.torc.tech].deb ~/Downloads 
sudo apt-get install ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb -y -f
sleep 5
rm ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb
/opt/PaperCutPrintDeployClient/initialise.sh -w 
#--------------------------------------
#Papercut file stored at: t14-aus-it-server
