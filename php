echo "P"
sleeo 0.2
echo "PH"
sleeo 0.2
echo "PHP"
sleeo 0.2
echo "PHP INSTALLER"
sleeo 0.2
sudo add-apt-repository ppa:ondrej/php &&
sudo apt-get update
sleep 10 &&
sudo apt -y install software-properties-common
sudo apt-get update
sleep 10
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php &&
sleep 2
HASH=`curl -sS https://composer.github.io/installer.sig` &&
echo $HASH && 
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" &&
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer &&
sudo apt-get install -y php-cli php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-bcmath mysql-server
