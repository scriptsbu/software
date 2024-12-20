#!/usr/bin/env bash
sudo apt-get update
sudo apt-get purge resolvconf -y -f
sudo rm -r ~/Downloads/GlobalProtect_UI_deb-6.2.1.1-276.deb -f
sudo rm -r ~/Downloads/gnome-browser-connector_42.1-4_all.deb -f
sudo rm -r ~/Downloads/GlobalProtect_deb-6.2.1.1-276.deb -f
cd ~/Downloads/
##########################################################################################################
#----DOWNLOADING: GlobalProtect_GUI_Installer/GlobalProtect_UI_deb-6.2.1.1-276.deb
##########################################################################################################
echo -e "\x1b[41;37mA browser window will now open to download dependencies; return to Terminal after the download is completed.\x1b[K\x1b[0m"
read -p "Press ENTER key to proceed with the download."
#Confluence Link
xdg-open https://torc.atlassian.net/wiki/download/attachments/666141053/GlobalProtect_UI_deb-6.2.1.1-276.deb?api=v2
#MS SharePoint Link
#xdg-open https://torcrobotics-my.sharepoint.com/:u:/r/personal/juan_molleda_torc_ai/Documents/Network-documents/GP-Ubuntu-18.04-Installer/GlobalProtect_UI_deb-6.2.1.1-276.deb?download=1
#old file: GlobalProtect_UI_focal_deb-6.1.2.0-82.deb

sleep 1
read -p "PRESS ENTER KEY TO CONTINUE"
#Confluence Link
xdg-open https://torc.atlassian.net/wiki/download/attachments/666141053/GlobalProtect_deb-6.2.1.1-276.deb?api=v2
#MS SharePoint Link
#xdg-open https://torcrobotics-my.sharepoint.com/:u:/r/personal/juan_molleda_torc_ai/Documents/Network-documents/GP-Ubuntu-18.04-Installer/GlobalProtect_deb-6.2.1.1-276.deb?download=1
#old file: GlobalProtect_deb-6.1.2.0-82.deb
sleep 1
echo -e "\x1b[41;37mAfter downloading the .deb file, verify that the file exists in the downloads folder.\x1b[K\x1b[0m" && read -p "Press ENTER key to open instpect the folder."
ls ~/Downloads | grep GlobalProtect_UI_deb-6.2.1.1-276.deb && ls ~/Downloads | grep GlobalProtect_deb-6.2.1.1-276.deb
read -p "Is GlobalProtect_UI_deb-6.2.1.1-276.deb and GlobalProtect_deb-6.2.1.1-276.deb present in the directory? Press ENTER key to continue."
##########################################################################################################
if [ ! -f "GlobalProtect_UI_deb-6.2.1.1-276.deb" ]; then
   echo -e "\x1b[41;37mGlobalProtect_UI_deb-6.2.1.1-276.deb not found, Please restart Script.\x1b[K\x1b[0m" &&
   exit
     fi
if [ ! -f "GlobalProtect_deb-6.2.1.1-276.deb" ]; then
   echo -e "\x1b[41;37mGlobalProtect_deb-6.2.1.1-276.deb not found, Please restart Script.\x1b[K\x1b[0m" &&
   exit
     fi
##########################################################################################################
sudo apt-get install resolvconf
sudo apt-get install gir1.2-gtk-3.0 gir1.2-webkit2-4.0
sudo dpkg --force-all -i GlobalProtect_UI_deb-6.2.1.1-276.deb; sudo apt-get -f install -y; sudo dpkg -i GlobalProtect_deb-6.2.1.1-276.deb
#globalprotect disconnect none
##########################################################################################################
  #----ADDING: <default-browser>yes</default-browser> TO: /opt/paloaltonetworks/globalprotect/pangps.xml 
  ##########################################################################################################
  #NOTICE THAT USING SED WILL NEED / AFTER THE LINE YOU ARE LOOKING FOR. I.E.: '/LINE-YOU-ARE-SEARCHING'
  ##########################################################################################################
  sudo sed -i '/<Settings>/a      <default-browser>yes</default-browser>' /opt/paloaltonetworks/globalprotect/pangps.xml
  sudo systemctl daemon-reload
  ###########################################################################################################
  #FIXING STREAM PARANOID
  ##########################################################################################################
  echo "dev.i915.perf_stream_paranoid=0" | sudo tee -a /etc/sysctl.conf
  sudo sysctl -p
###########################################################################################################
sudo apt-get install gnome-tweak-tool -y -f
###########################################################################################################
#INSTALL GNOME SHELL EXTENSION MANNUALLY
###########################################################################################################
sudo apt-get install chrome-gnome-shell -y -f
sudo rm -r ~/Downloads/GlobalProtect_UI_deb-6.2.1.1-276.deb
sudo rm -r ~/Downloads/gnome-browser-connector_42.1-4_all.deb
###########################################################################################################
#CREATE ALIASES FOR CLI
##########################################################################################################
echo "alias globalprotect-bcb='globalprotect connect -p vpn.torc.tech && globalprotect connect -g BCB && globalprotect show --status'" | sudo tee -a ~/.bashrc
echo "alias globalprotect-aus='globalprotect connect -p vpn.torc.tech && globalprotect connect -g AUS && globalprotect show --status'" | sudo tee -a ~/.bashrc
echo "alias globalprotect-abq='globalprotect connect -p vpn.torc.tech && globalprotect connect -g ABQ && globalprotect show --status'" | sudo tee -a ~/.bashrc
echo "alias globalprotect-crc='globalprotect connect -p vpn.torc.tech && globalprotect connect -g CRC && globalprotect show --status'" | sudo tee -a ~/.bashrc
echo "alias globalprotect-mtl='globalprotect connect -p vpn.torc.tech && globalprotect connect -g MTL && globalprotect show --status'" | sudo tee -a ~/.bashrc
echo "alias globalprotect-str='globalprotect connect -p vpn.torc.tech && globalprotect connect -g STR && globalprotect show --status'" | sudo tee -a ~/.bashrc
source ~/.bashrc
sudo systemctl restart gpd.service
#sudo gedit ~/.bashrc
###########################################################################################################
#REBOOT PROMPT# ANY QUESTIONS, PLEASE ASK ALBERTO.SANTIAGO@TORC.AI
###########################################################################################################
echo -e "\x1b[41;37mDone!\x1b[K\x1b[0m"
while true;do
 

  read -p "Do you want to reboot now(Y/N)?" QUESTION
  
  case "${QUESTION}" in
    [Yy] ) 
      echo "Rebooting now..."    
       sudo reboot  
      ;;

    * ) 
      echo "Don't forget to Reboot the system to apply changes!"
      exit
      ;;
  esac
done
