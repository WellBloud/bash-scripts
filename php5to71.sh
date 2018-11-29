sudo a2dismod php5.6 php7.2
sudo a2enmod php7.1
sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php7.1;
echo "PHP nastaveno na verzi 7.1"
