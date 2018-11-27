sudo a2dismod php7.2 php7.1
sudo a2enmod php5.6
sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php5.6;
echo "PHP nastaveno na verzi 5.6"
