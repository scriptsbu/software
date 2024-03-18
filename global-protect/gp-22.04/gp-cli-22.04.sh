#!/usr/bin/env bash
sudo apt-get update
sudo rm -r ~/Downloads/GlobalProtect_UI_focal_deb-6.1.2.0-82.deb -f
sudo rm -r ~/Downloads/gnome-browser-connector_42.1-4_all.deb -f
sudo rm -r ~/Downloads/GlobalProtect_focal_deb-6.1.2.0-82.deb -f
sudo apt-get purge resolvconf -y -f
cd ~/Downloads/
##########################################################################################################
#----DOWNLOADING: GlobalProtect_GUI_Installer/GlobalProtect_UI_focal_deb-6.1.2.0-82.deb
##########################################################################################################
echo -e "\x1b[41;37mA browser window will now open to download dependencies; return to Terminal after the download is completed.\x1b[K\x1b[0m"
read -p "Press ENTER key to proceed with the download."
xdg-open https://torcrobotics-my.sharepoint.com/:u:/r/personal/juan_molleda_torc_ai/Documents/GlobalProtect_GUI_Installer/GlobalProtect_UI_focal_deb-6.1.2.0-82.deb?download=1
sleep 1
read -p "PRESS ENTER KEY TO CONTINUE"
xdg-open https://torcrobotics-my.sharepoint.com/:u:/r/personal/juan_molleda_torc_ai/Documents/GlobalProtect_CLI_installer/GlobalProtect_focal_deb-6.1.2.0-82.deb?download=1
sleep 1
echo -e "\x1b[41;37mAfter downloading the .deb file, verify that the file exists in the downloads directory.\x1b[K\x1b[0m" && read -p "Press ENTER key to inspect the directory."
ls ~/Downloads | grep GlobalProtect_UI_focal_deb-6.1.2.0-82.deb && ls ~/Downloads | grep GlobalProtect_focal_deb-6.1.2.0-82.deb
read -p "Verify that GlobalProtect_UI_focal_deb-6.1.2.0-82.deb and GlobalProtect_focal_deb-6.1.2.0-82.deb are present in the line above. Press ENTER key to continue."
##########################################################################################################
if [ ! -f "GlobalProtect_UI_focal_deb-6.1.2.0-82.deb" ]; then
   echo -e "\x1b[41;37mGlobalProtect_UI_focal_deb-6.1.2.0-82.deb not found, Please restart Script.\x1b[K\x1b[0m" &&
   exit
     fi
if [ ! -f "GlobalProtect_focal_deb-6.1.2.0-82.deb" ]; then
   echo -e "\x1b[41;37mGlobalProtect_focal_deb-6.1.2.0-82.deb not found, Please restart Script.\x1b[K\x1b[0m" &&
   exit
     fi
##########################################################################################################
sudo apt-get install resolvconf
sudo apt-get install gir1.2-gtk-3.0 gir1.2-webkit2-4.0
sudo dpkg --force-all -i GlobalProtect_UI_focal_deb-6.1.2.0-82.deb; sudo apt-get -f install -y; sudo dpkg -i GlobalProtect_focal_deb-6.1.2.0-82.deb
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
sudo tee /usr/share/applications/gp.desktop > /dev/null <<EOT
[Desktop Entry]
Name=GlobalProtect
Exec=/usr/bin/globalprotect defaultbrowser %u
Type=Application
NoDisplay=true
MimeType=x-scheme-handler/globalprotectcallback;
EOT
xdg-mime default gp.desktop "x-scheme-handler/globalprotectcallback"
xdg-mime query default "x-scheme-handler/globalprotectcallback"  
###########################################################################################################
sudo apt-get install gnome-tweak-tool -y -f
###########################################################################################################
#INSTALL GNOME SHELL EXTENSION MANNUALLY
###########################################################################################################
sudo apt-get install chrome-gnome-shell -y -f
sudo rm -r ~/Downloads/GlobalProtect_UI_focal_deb-6.1.2.0-82.deb
sudo rm -r ~/Downloads/gnome-browser-connector_42.1-4_all.deb
###########################################################################################################
#CREATE ALIASES FOR CLI
##########################################################################################################
echo "alias globalprotect-vpn='read -p \"add @torc.ai to your username, press ENTER key to continue\" && globalprotect connect -p vpn-truck.torc.tech && globalprotect show --status'" | sudo tee -a ~/.bashrc
source ~/.bashrc
#sudo gedit ~/.bashrc
###########################################################################################################
#REBOOT PROMPT# ANY QUESTIONS, PLEASE ASK ALBERTO.SANTIAGO@TORC.AI
###########################################################################################################
echo -e "\x1b[41;37mDone!\x1b[K\x1b[0m"
source ~/.bashrc
while true;do
 

  read -p "Do you want to test the VPN (Y/N)? (A REBOOT MAY BE REQUIRED AFTER INSTALLATION)" QUESTION
  
  case "${QUESTION}" in
    [Yy] ) 
      echo "Starting the test now... to disconnect use the command: globalprotect disconnect. IF THE TEST FAILS, REBOOT YOUR MACHINE."    
       read -p "add @torc.ai to your username, press ENTER key to continue" && globalprotect connect -p vpn-truck.torc.tech && globalprotect show --status  
      ;;

    * ) 
      echo "Restart your Terminal so your shell can see the changes. Use globalprotect-vpn to connect and globalprotect disconnect to close the connection."
      exit
      ;;
  esac
done
