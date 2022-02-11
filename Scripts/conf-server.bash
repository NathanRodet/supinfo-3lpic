#!/bin/sh
#######################################

# Bash script to install an Apache2/Create UserAdmin for MySQL. For Ubuntu based systems.

######################################

## Before the script

# root -i
# sudo apt-get install git-all -y
# sudo git config --global user.name "NathanRodet"
# sudo git config --global user.mail rodetnathan.contact@gmail.com
# mkdir git-repos
# cd git-repos
# git clone https://github.com/NathanRodet/linux-project
# cd linux-project/
# cd Scripts/
# chmod +x conf-server.bash
# ./conf-server.bash


# Update packages and Upgrade system
sudo apt update -y && sudo apt-get upgrade -y

## Install LAMP stack (Linux Apache PHP MySQL)
sudo apt install apache2 -y
sudo apt install php -y
sudo apt install libapache2-mod-php -y
sudo apt install mysql-server -y
sudo apt install php-mysql -y

