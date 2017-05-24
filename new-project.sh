# https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-16-04
# vytvori novy adresar pro zdrojove soubory projektu

bold=$(tput bold)
normal=$(tput sgr0)
folder="$HOME/projekty/$1"

if [ "$2" == "nette" ]
then 
	documentRoot="$folder/www" 
else 
	documentRoot=$folder
fi;

mkdir -p $folder

# na konec hosts souboru prida pristup pro novy projekt
echo "127.0.0.1	$1.localhost" | sudo tee --append /etc/hosts > /dev/null

# vygeneruje novy konfiguracni soubor pro projekt
echo "
<VirtualHost *:80>
    DocumentRoot $documentRoot
    ServerName $1.localhost
    <Directory $documentRoot>
        AllowOverride All
        Require local
    </Directory>
</VirtualHost>
" | sudo tee --append /etc/apache2/sites-available/$1.localhost.conf > /dev/null

# povoli novy konfiguracni soubor
sudo a2ensite $1.localhost.conf

# reload sluzby apache
sudo service apache2 reload

echo "Projekt byl vytvoren na domene ${bold}$1.localhost${normal} ve slozce ${bold}$folder${normal}"

