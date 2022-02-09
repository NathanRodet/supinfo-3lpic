#!/bin/sh
#######################################

# Bash script to install an Apache2. For Ubuntu based systems.

######################################

# Update packages and Upgrade system
sudo apt update -y && sudo apt-get upgrade -y

## Install ngnix
sudo apt install nginx
## Check ufw firewall
sudo ufw app list
## Add ngnix trafic
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'
## Check ufw firewall to see changes
sudo ufw status
## Install MySql
sudo apt-get install mysql-server -y
## Check status for Apache2 Server
sudo systemctl status mysql.service

