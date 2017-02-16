sudo a2dismod php7.0
sudo a2enmod php5.6
sudo service apache2 restart
sudo ln -sfn /usr/bin/php5.6 /etc/alternatives/php
echo "PHP nastaveno na verzi 5.6"
