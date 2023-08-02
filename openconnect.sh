#!/bin/bash
sudo apt update -y
sudo apt install openconnect

while true;do
 
   echo -e "\x1b[41;37m Do you want an alias to be created for ease of use?\x1b[K\x1b[0m"
   read -p "Y/N" QUESTION
  
  
  case "${QUESTION}" in
    [Yy] ) 
      echo -e "\x1b[41;37m Alias will be "VPN"\x1b[K\x1b[0m" && sleep 5
      echo "alias vpn="sudo openconnect vpn.torcrobotics.com --authgroup=Employee-Split-Push"" | sudo tee -a ~/.bashrc && 
      sudo openconnect vpn.torcrobotics.com --authgroup=Employee-Split-Push
  
      ;;

    * ) 
      sudo openconnect vpn.torcrobotics.com --authgroup=Employee-Split-Push
  esac