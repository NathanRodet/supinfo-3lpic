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

## Go to
# sudo nano /etc/rsyslog.conf
## Uncomment ModLoad and UDPServerRun, Here our Server will listen to Port 514 to collect the logs into syslog.
# Provides UDP syslog reception
# $ModLoad imudp
# $UDPServerRun 514
## Create a separate file 'haproxy.conf' under '/etc/rsyslog.d' directory
# sudo nano /etc/rsyslog.d/haproxy.conf
## Add the following line to end the of the file
# local2.*	/var/log/haproxy.log
# service rsyslog restart