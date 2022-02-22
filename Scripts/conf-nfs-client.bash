#!/bin/sh
#######################################

# Bash script to install NFS client side

######################################

sudo apt install nfs-common
sudo mkdir -p /etc/mnt/shared_client
sudo mount 10.0.0.5:/mnt/shared /etc/mnt/shared_client