#!/bin/sh
#######################################

# Bash script to install NFS server side

######################################

## Update packages and Upgrade system
sudo apt update -y && sudo apt-get upgrade -y

## Install NFS Kernel Server
sudo apt install nfs-kernel-server
## Create the Export directory
sudo mkdir -p -/mnt/shared
## Remove permissions because this is local project
sudo chown nobody:nogroup /mnt/shared
sudo chmod 777 /mnt/shared
## Assign server access to clients
sudo nano /etc/exports
## Then ADD for multiple client or subnet

## If Clients
/mnt/shared 10.0.0.3(rw,sync,no_subtree_check)
/mnt/shared 10.0.0.4(rw,sync,no_subtree_check)
## If whole subnet
# /mnt/shared 10.0.0.0/24(rw,sync,no_subtree_check)

## Export Shared directory
sudo exportfs -a
sudo systemctl restart nfs-kernel-server

## Firewall rules
sudo ufw allow from 10.0.0.3 to any port nfs
sudo ufw allow from 10.0.0.4 to any port nfs
sudo ufw status

