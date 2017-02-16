# https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-16-04
# vytvori novy adresar pro zdrojove soubory projektu
folder="/home/xholop/projekty/$1"
mkdir -p $folder

# na konec hosts souboru prida pristup pro novy projekt
echo "127.0.0.1	$1.localhost" | sudo tee --append /etc/hosts > /dev/null

# vygeneruje novy konfiguracni soubor pro projekt
echo "
<VirtualHost *:80>
    DocumentRoot $folder
    ServerName $1.localhost
    <Directory $folder>
        AllowOverride All
        Require local
    </Directory>
</VirtualHost>" | sudo tee --append /etc/apache2/sites-available/$1.localhost.conf > /dev/null

# povoli novy konfiguracni soubor
sudo a2ensite $1.localhost.conf

# reload sluzby apache
sudo service apache2 reload

echo "Projekt byl vytvoren na domene $1.localhost ve slozce $folder"
