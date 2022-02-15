#!/bin/sh
#######################################

# Bash script to install an Apache2 and dependanciesy
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

## Create Cron to get update for script repository every hour
sudo crontab -l > cron_gitupdate
sudo echo "0 * * * * cd /repos/linux-project && git pull" >> cron_gitupdate
sudo crontab cron_gitupdate
sudo rm cron_gitupdate

