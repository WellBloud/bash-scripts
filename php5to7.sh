sudo a2dismod php5.6
sudo a2dismod php7.0
sudo a2enmod php7.1
sudo service apache2 restart
sudo ln -sfn /usr/bin/php7.1 /etc/alternatives/php
echo "PHP nastaveno na verzi 7.1 "
