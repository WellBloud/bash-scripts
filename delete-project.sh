# smaze adresar se zdrojovymi soubory projektu

bold=$(tput bold)
normal=$(tput sgr0)
folder="$HOME/projekty/$1"
sudo rm -rf $folder

# vymaze projekt z hosts souboru
sudo sed -i "/$1/d" /etc/hosts

# vypne konfiguracni soubor
sudo a2dissite $1.localhost.conf

# smaze konfiguracni soubor
sudo rm /etc/apache2/sites-available/$1.localhost.conf

# reload sluzby apache
sudo service apache2 reload

echo "Projekt ${bold}$1.localhost${normal} byl smazan, vcetne slozky ${bold}$folder${normal}"
