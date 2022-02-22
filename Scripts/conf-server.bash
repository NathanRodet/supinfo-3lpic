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
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
ufw reload
## Restart apache2 to apply changes
sudo /etc/init.d/apache2 restart

## Conf HAproxy

#sudo nano /etc/hosts
## Add to first line
# loadbalancer-001 10.0.0.5

## Test Apache 2
# ifconfig | grep inet
## Use the ip to check the localhost
# sudo nano /var/www/html/test.php
# Add <?php echo 'it works?'; ?>
## Go check at the url x.x.x.x/test.php it must be working
