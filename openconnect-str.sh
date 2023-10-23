#!/bin/bash
sudo apt update -y
sudo apt install openconnect
while true;do

 
   echo -e "\x1b[41;37m Do you want an alias to be created for ease of use?\x1b[K\x1b[0m" &&
   read -p "Y/N" QUESTION
  
  case "${QUESTION}" in
    [Yy] ) 
      echo -e "\x1b[41;37m Alias will be "VPN"\x1b[K\x1b[0m"
      echo "alias str-vpn='sudo openconnect --protocol=gp --no-dtls str-vpn-truck.torc.tech --$USER && resetdns'" | sudo tee -a ~/.bashrc
      sudo openconnect str-vpn-truck.torc.tech --authgroup=Employee-split-Push
      ;;
      
    * ) 
      echo -e "\x1b[41;37m Ok, Connecting to the VPN now.\x1b[K\x1b[0m"
      sudo openconnect str-vpn-truck.torc.tech --authgroup=Employee-split-Push
      ;;
  esac
done 
