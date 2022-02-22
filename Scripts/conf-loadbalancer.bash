#!/bin/sh
#######################################

# Bash script to install HAproxy Load Balancer. For Ubuntu based systems.

######################################

## Update packages and Upgrade system
sudo apt update -y && sudo apt-get upgrade -y

## Install HAproxy
sudo apt install haproxy -y
sudo nano /etc/haproxy/haproxy.cfg
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
ufw reload


## Configure haproxy
# Command in documenation

#haproxy -c -f /etc/haproxy/haproxy.cfg
