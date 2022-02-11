#!/bin/sh
#######################################

# Bash script to install an Apache2. For Ubuntu based systems.

######################################

## Update packages and Upgrade system
sudo apt update -y && sudo apt-get upgrade -y

## Install LAMP stack (Linux Apache PHP MySQL)
sudo apt install apache2 -y
sudo apt install php -y
sudo apt install libapache2-mod-php -y
sudo apt install mysql-server -y
sudo apt install php-mysql -y
sudo /etc/init.d/apache2 restart


