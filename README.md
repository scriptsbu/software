INSTALL:
==========================================================

GO: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/go.sh)

VIM: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/neovim.sh)

PAPERCUT: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/papercut.sh)

PULSE AUDIO: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/pavu.sh)

VECTOR: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/vector.sh)

VIRTUALBOX: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/virtualbox.sh)

Crowdstrike: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/u20-falcon.sh)


VPN's:
==========================================================


CISCO VPN: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/ciscovpn.sh)

OPEN CONNECT VPN: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/openconnect.sh)

OPEN CONNECT FULL VPN: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/openconnect-full.sh)

OPEN CONNECT STR: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/openconnect-str.sh)

GLOBAL PROTECT:

CLI for 18.04: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-18.04/gp-cli-18.04.sh)

GUI for 18.04: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-18.04/gp-gui-web-18.04.sh)

CLI for 20.04: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-20.04/gp-cli-20.04.sh)

GUI for 20.04: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-20.04/gp-gui-web-20.04.sh)


UNINSTALL:
==========================================================

Global Protect VPN Purge: bash <(curl -Ls https://github.com/scriptsbu/software/raw/main/global-protect/gp-uninstall.sh)

CISCO VPN: sudo bash /opt/cisco/anyconnect/bin/anyconnect_uninstall.sh

PAPERCUT: /opt/PaperCutPrintDeployClient/uninitialise.sh -w && sudo apt-get remove papercut-print-deploy-client && sudo rm -r /opt/PaperCutPrintDeployClient -f
