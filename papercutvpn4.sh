#!/bin/bash
sudo apt update
while true;do

 
   echo -e "\x1b[41;37m Are you on-premises?\x1b[K\x1b[0m" &&
   read -p "Y/N" QUESTION
  
  case "${QUESTION}" in
    [Yy] ) 
      echo -e "\x1b[41;37m Alias will be "VPN"\x1b[K\x1b[0m"
      wget http://10.20.240.3/it/pc-print-deploy-client[papercut.torc.tech].deb ~/Downloads && sudo apt-get install ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb -y -f &&
      sleep 5 &&
      rm ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb &&
      /opt/PaperCutPrintDeployClient/initialise.sh -w &&
      sudo apt update && apt upgrade -f -y
      ;;
      
    * ) 
      echo -e "\x1b[41;37m Ok, let's connect to the VPN now.\x1b[K\x1b[0m"
      sudo openconnect vpn.torcrobotics.com --authgroup=Employee-Split-Push &&
      wget http://10.20.240.3/it/pc-print-deploy-client[papercut.torc.tech].deb ~/Downloads &&
      sudo apt-get install ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb -y -f &&
      sleep 5 &&
      rm ~/Downloads/pc-print-deploy-client[papercut.torc.tech].deb &&
      /opt/PaperCutPrintDeployClient/initialise.sh -w &&
      sudo apt update && apt upgrade -f -y
      ;;
  esac
done 

#--------------------------------------
#Papercut file stored at: t14-aus-it-server
