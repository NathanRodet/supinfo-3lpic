#!/bin/sh
#######################################

# Bash script to install LAMP Stack

######################################

## Update packages and Upgrade system
sudo apt update -y && sudo apt-get upgrade -y

## Install LAMP stack (Linux Apache PHP MySQL)
sudo apt install apache2 -y
sudo apt install php -y
sudo apt install libapache2-mod-php -y
sudo apt install mysql-server -y
sudo apt install php-mysql -y
## Restart apache2 to apply changes
sudo /etc/init.d/apache2 restart

## Test Apache 2
# ifconfig | grep inet 
## Use the ip to check the localhost
# sudo nano /var/www/html/test.php
# Add <?php echo 'it works?'; ?>
## Go check at the url x.x.x.x/test.php it must be working
