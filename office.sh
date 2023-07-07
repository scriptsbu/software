sudo apt update && upgrade -y
sudo apt install winbind -y
sudo apt install playonlinux -y
sudo apt install winetricks -y
sudo wget https://github.com/scriptsbu/software/raw/main/exe/OfficeSetup.exe -P /usr/local
playonlinux /usr/local/OfficeSetup.exe
sudo rm /usr/local/OfficeSetup.exe
