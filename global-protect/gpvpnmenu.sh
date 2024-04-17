#!/bin/bash
echo -e "\x1b[41;37mPlease choose from the following options; press [ENTER] to proceed.\x1b[K\x1b[0m"
read -p ""
options=("18.04-CLI" "18.04-GUI" "20.04-CLI" "20.04-GUI" "22.04-CLI" "GP-Purge" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "18.04-CLI")
bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-18.04/gp-cli-18.04.sh)
            ;;
        "18.04-GUI")
bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-18.04/gp-gui-web-18.04.sh)
            ;;
        "20.04-CLI")
bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-20.04/gp-cli-20.04.sh)
            ;;
        "20.04-GUI")
bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-20.04/gp-gui-web-20.04.sh)
            ;;
        "22.04-CLI")
bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-22.04/gp-cli-22.04.sh)
            ;;
        "GP-Purge")
bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-uninstall.sh)
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
exit
