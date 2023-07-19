#!/bin/bash
sudo apt-get update
sudo rm -rf /usr/local/go
sudo apt-get purge -y --auto-remove golang-go
sudo wget http://go.dev/dl/go1.20.5.linux-amd64.tar.gz ~/Downloads
sudo apt-get -y install gcc
sudo tar -xf ~/Downloads/go1.20.5.linux-amd64.tar.gz
sudo mv ~/Downloads/go /usr/local/go
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
sudo apt-get -y upgrade --fix-missing
sudo rm -rf ~/Downloads/go1.20.5.linux-amd64.tar.gz
sudo apt install snapd
sudo snap install go --classic
sudo go version
sudo rm -rf go1.20.5.linux-amd64.tar.gz
sudo apt-get update && apt-get upgrade -f -y
