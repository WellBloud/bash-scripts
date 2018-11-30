echo "---------------------------------------------"
echo "Builduju problemove Docker image"
echo "---------------------------------------------"
cd ~/docker/ubuntu\:jessie-ssh/
docker build . -t ponk/debian:jessie-ssh
echo "---------------------------------------------"
cd ~/docker/php7.1-cli/
docker build . -t ponk/php:7.1-cli
echo "---------------------------------------------"
cd ~/docker/php7.2-cli/
docker build . -t ponk/php:7.2-cli
echo "---------------------------------------------"
echo "Problemove Docker image uspesne zbuildovany"
echo "Pro jistotu jeste restartuju Docker service"
echo "---------------------------------------------"
sudo service docker restart
echo "---------------------------------------------"
echo "Hotovo, snad to vsechno jede"
echo "---------------------------------------------"

