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

# stuff for LumenAd start
mkdir -p ~/projects
echo "Installing development tools"
sudo snap install slack postman phpstorm datagrip

echo "Installing npm, nodejs and php related stuff"
sudo curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt -y install nodejs php7.4-mysql php7.4-sqlite3 php-dom php-xml php-mbstring php-soap php-mail php-bz2 php-gd php-imap htop
sudo npm install -g parcel
sudo npm install -g cross-env

echo "Installing docker"
sudo apt-get -y remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get -y install \\
    apt-transport-https \\
    ca-certificates \\
    curl \\
    gnupg-agent \\
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
# stuff for LumenAd end

sudo apt upgrade
echo "Cleaning up"
rm google-chrome-stable_current_amd64.deb
rm composer-setup.php
sudo apt -y remove firefox rhythmbox
sudo apt autoclean
sudo apt autoremove

