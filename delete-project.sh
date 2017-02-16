# smaze adresar se zdrojovymi soubory projektu
folder="/home/xholop/projekty/$1"
sudo rm -rf $folder

# vymaze projekt z hosts souboru
sudo sed -i "/$1/d" /etc/hosts

# vypne konfiguracni soubor
sudo a2dissite $1.localhost.conf

# smaze konfiguracni soubor
sudo rm /etc/apache2/sites-available/$1.localhost.conf

# reload sluzby apache
sudo service apache2 reload

echo "Projekt $1.localhost byl smazan, vcetne slozky $folder"
