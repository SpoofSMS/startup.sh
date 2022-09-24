echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'STARTUP LOADING\033[0m' &&
sleep 1 &&
echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'STARTUP LOADING.\033[0m' &&
sleep 1 &&  
echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'STARTUP LOADING..\033[0m' &&
sleep 1 && 
echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'STARTUP LOADING...\033[0m' &&
sleep 1 && 
echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'COMPLETE [X]\033[0m' &&
sleep 3 
echo "S"
sleep 0.1
echo "Y"
sleep 0.1
echo "S"
sleep 0.1
echo "T"
sleep 0.1
echo "E"
sleep 0.1
echo "M"
sleep 0.1
echo "K"
sleep 0.1
echo "e"
sleep 0.1
echo "y"
sleep 0.1
echo "y"
sleep 5
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php &&
sleep 2
&&
HASH=`curl -sS https://composer.github.io/installer.sig` &&
sleep 2
echo $HASH && 
sleep 2
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" &&
sleep 5 &&
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer &&
sleep 5 &&
echo -ne $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'COMPOSER v2 INSTALLED [X]'\033[0m' 

sudo apt -y update && sudo apt -y
sudo apt -y install software-properties-common &&
sleep 1 &&
sudo add-apt-repository ppa:ondrej/php -yy &&
sudo apt-get update &&
sleep 1
clear &&
echo -ne $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'Checking current status, and continuing.'\033[0m' 
sleep 5
sudo apt -y install php &&
echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'Your current PHP Version is being checked'\033[0m' 
echo -e $'\e[1;91m[\e[0m\e[1;77m+\e[0m\e[1;91m]\e[1;32m'Installing'\033[0m' 
php -v &&
sleep 3
clear 
read -p "Install Essentials? Yes/No " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
sudo apt-get install -y php-cli php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-bcmath && sleep 45;
 else
    echo "Fuck off then"
 fi
