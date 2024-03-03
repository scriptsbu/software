#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install google-chrome-stable -y -f
sudo rm -r ~/Downloads/GlobalProtect_UI_deb-6.1.2.0-82.deb -f
sudo rm -r ~/Downloads/gnome-browser-connector_42.1-4_all.deb -f
sudo rm -r ~/Downloads/GlobalProtect_focal_deb-6.1.2.0-82.deb -f
cd ~/Downloads/
##########################################################################################################
#----DOWNLOADING: GlobalProtect_GUI_Installer/GlobalProtect_UI_deb-6.1.2.0-82.deb
##########################################################################################################
echo -e "\x1b[41;37mA browser window will now open to download dependencies; return to Terminal after the download is completed.\x1b[K\x1b[0m"
read -p "Press ENTER key to proceed with the download."
xdg-open https://torcrobotics-my.sharepoint.com/:u:/r/personal/juan_molleda_torc_ai/Documents/Network-documents/GP-Ubuntu-18.04-Installer/GlobalProtect_UI_deb-6.1.2.0-82.deb?download=1
sleep 1
echo -e "\x1b[41;37mAfter downloading the .deb file, verify that the file exists in the downloads folder.\x1b[K\x1b[0m" && read -p "Press ENTER key to open instpect the folder."
ls ~/Downloads | grep GlobalProtect_UI_deb-6.1.2.0-82.deb
read -p "Is GlobalProtect_UI_deb-6.1.2.0-82.deb present in the directory? Press ENTER key to continue."
##########################################################################################################
if [ ! -f "GlobalProtect_UI_deb-6.1.2.0-82.deb" ]; then
   echo -e "\x1b[41;37mGlobalProtect_UI_deb-6.1.2.0-82.deb not found, Please restart Script.\x1b[K\x1b[0m" &&
   exit
     fi
##########################################################################################################
sudo apt-get install resolvconf
sudo dpkg --force-all -i GlobalProtect_UI_deb-6.1.2.0-82.deb; sudo apt-get -f install -y
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
#echo "dev.i915.perf_stream_paranoid=0" | sudo tee -a /etc/sysctl.conf
#sudo sysctl -p
###########################################################################################################
#INSTALL GNOME SHELL EXTENSION MANNUALLY
###########################################################################################################
sudo apt-get install chrome-gnome-shell -y -f
sudo apt-get install gnome-tweak-tool -y -f 
sudo rm -r ~/Downloads/GlobalProtect_UI_deb-6.1.2.0-82.deb -f
echo -e "\x1b[41;37mInstall the GNOME Shell extension (if it's not already installed) by clicking on the “Click here to install browser extension” hyperlink. Continue and Add the GNOME Shell extension and return to Terminal. Press ENTER key to continue.\x1b[K\x1b[0m"
read -p ""
gnome-terminal -- google-chrome https://extensions.gnome.org/
echo -e "\x1b[41;37mInstall the AppIndicator and KStatusNotifierItem Support by clicking on the install or toggle the ON button. Continue and Add the GNOME Shell extension and return to Terminal. Press ENTER key to continue.\x1b[K\x1b[0m"
read -p ""
gnome-terminal -- google-chrome https://extensions.gnome.org/extension/615/appindicator-support/
###########################################################################################################
#REBOOT PROMPT# ANY QUESTIONS, PLEASE ASK ALBERTO.SANTIAGO@TORC.AI
###########################################################################################################
echo -e "\x1b[41;37mDone!\x1b[K\x1b[0m"
while true;do
 

  read -p "Do you want to reboot now(Y/N)?" QUESTION
  
  case "${QUESTION}" in
    [Yy] ) 
      echo "Rebooting now..." 
      #killall -3 gnome-shell &&   
       sudo reboot  
      ;;

    * ) 
      echo "Don't forget to Reboot the system to apply changes!"
      #killall -3 gnome-shell &&
      exit
      ;;
  esac
done
