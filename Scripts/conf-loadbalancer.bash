#!/bin/sh
#######################################

# Bash script to install HAproxy Load Balancer. For Ubuntu based systems.

######################################

## Install HAproxy
sudo apt install haproxy -y
apt install haproxy -t wheezy-backports

## Configure haproxy
# sudo nano /etc/haproxy/haproxy.cfg
## Under #Global settings comment the line below
# log /dev/log        local0
# log /dev/log        local1 notice 
## and Add
# log         127.0.0.1 local2

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