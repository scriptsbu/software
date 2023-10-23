INSTALL:

CISCO VPN: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/ciscovpn.sh)

GO: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/go.sh)

VIM: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/neovim.sh)

PAPERCUT: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/papercut.sh)

PULSE AUDIO: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/pavu.sh)

VECTOR: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/vector.sh)

OPEN CONNECT VPN: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/openconnect.sh)

OPEN CONNECT FULL VPN: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/openconnect-full.sh)


OPEN CONNECT STR: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/openconnect-str.sh)

VIRTUALBOX: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/virtualbox.sh)


==========================================================

UNINSTALL:

CISCO VPN: sudo bash /opt/cisco/anyconnect/bin/anyconnect_uninstall.sh

PAPERCUT: /opt/PaperCutPrintDeployClient/uninitialise.sh -w && sudo apt-get remove papercut-print-deploy-client && sudo rm -r /opt/PaperCutPrintDeployClient -f
