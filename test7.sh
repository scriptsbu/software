echo -e '\x1b[41;37mWarning text\x1b[K\x1b[0m';echo Normal text
echo -e '\033[35mWarning text\x1b[K\x1b[0m';echo Normal text

read -p '\x1b[41;37mA browser will launch Confluence to access a file, login, close the browser window, and return to this screen. Please press [ENTER] to proceed.\x1b[K\x1b[0m'
echo -e '\x1b[41;37mA browser will launch Confluence to access a file, login, close the browser window, and return to this screen. Please press [ENTER] to proceed.\x1b[K\x1b[0m'
