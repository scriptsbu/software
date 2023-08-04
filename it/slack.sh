#!/bin/bash
wget http://10.20.240.3/it/slack.deb ~/Downloads 
sudo apt-get install ~/Downloads/slack.deb -y -f
sleep 5
rm ~/Downloads/slack.deb -f
#--------------------------------------
#Slack file stored at: t14-aus-it-server
