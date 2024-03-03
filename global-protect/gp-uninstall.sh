#!/usr/bin/env bash
sudo apt-get purge resolvconf -y -f
sudo apt-get purge globalprotect -y -f
sudo apt-get purge gnome-tweak-tool -y -f
sudo apt-get purge chrome-gnome-shell meson -y -f
sudo apt-get purge chrome-gnome-shell -y -f
sudo dpkg --force-all --purge gnome-browser-connector; sudo apt-get -f purge -y
sudo dpkg --force-all -r GlobalProtect; sudo apt-get -f purge -y
####################Flatpak remove###################################################
sudo apt-get purge flatpak -y -f
sudo apt-get purge gnome-software-plugin-flatpak -y -f
flatpak purge flathub com.mattjakeman.ExtensionManager -y -f
####################xml details here###################################################
#---- /opt/paloaltonetworks/globalprotect/pangps.xml === <default-browser>yes</default-browser>
sudo chmod 777 /opt/paloaltonetworks/globalprotect/pangps.xml -f
sudo rm /opt/paloaltonetworks/globalprotect/pangps.xml -f
################################################GNOME app indicator removal###########################################################
cd ~/.local/share/gnome-shell/extensions
gnome-extensions disable appindicatorsupport@rgcjonas.gmail.com
sudo rm -r appindicatorsupport@rgcjonas.gmail.com
sudo rm -r ~/.local/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com
sudo rm -r /usr/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com/
sudo rm -r ~/.local/share/gnome-shell/extensions/TopIcons@phocean.net
sudo rm -r ~/Downloads/indicators
sudo rm -r /etc/chromium/policies/managed
sudo rm -r ~/Downloads/appindicatorsupportrgcjonas.gmail.com.v42.shell-extension.zip
################################################gnome-shell-extension-appindicator clone###########################################################
cd ~/Downloads
sudo rm -r gnome-shell-extension-appindicator
killall -3 gnome-shell
while true;do
 

  read -p "Do you want to reboot now(Y/N)? " QUESTION
  
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
