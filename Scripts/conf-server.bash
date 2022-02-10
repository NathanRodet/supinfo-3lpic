#!/bin/sh
#######################################

# Bash script to install an Apache2. For Ubuntu based systems.

# sudo apt-get install git-all
# sudo git config --global user.name "NathanRodet"
# sudo git config --global user.mail rodetnathan.contact@gmail.com
# mkdir git-repos
# cd git-repos
# git clone https://github.com/NathanRodet/linux-project

######################################

# Update packages and Upgrade system
sudo apt update -y && sudo apt-get upgrade -y

## Install LAMP stack (Linux Apache PHP MySQL)
sudo apt install apache2
sudo apt install php
sudo apt install libapache2-mod-php
sudo apt install mysql-server
sudo apt install php-mysql

## Create Database UserAdmin

CREATE USER 'DbAdmin'@'localhost' IDENTIFIED BY 'DbPass';
