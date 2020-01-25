cd ~
echo "Updating apt database"
sudo apt update
echo "Installing from apt"
sudo apt -y install gdebi-core filezilla git chrome-gnome-shell gnome-shell-extensions vim zsh wget php-cli php-zip unzip php-curl
echo "Installing Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi google-chrome-stable_current_amd64.deb
echo "Installing from snap"
sudo snap install spotify clementine gimp vlc
echo "Setting up zsh as main shell"
chsh -s $(which zsh)
echo "Installing composer"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" 
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer global require hirak/prestissimo

sudo apt upgrade
echo "Cleaning up"
rm google-chrome-stable_current_amd64.deb
rm composer-setup.php
sudo apt -y remove firefox rhythmbox
sudo apt autoclean
sudo apt autoremove

