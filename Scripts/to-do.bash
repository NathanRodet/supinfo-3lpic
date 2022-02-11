## Before scripts


# root -i
# sudo apt-get install net-tools
# sudo apt-get install git-all -y
# sudo git config --global user.name "NathanRodet"
# sudo git config --global user.mail rodetnathan.contact@gmail.com
# mkdir repos
# cd epos
# git clone https://github.com/NathanRodet/linux-project
# cd linux-project/
# cd Scripts/
# chmod +x conf-server.bash
# ./conf-server.bash
# ...

## Check Apache 2
# ifconfig | grep inet 
## Use the ip to check the localhost
# sudo nano /var/www/html/test.php
# Add <?php echo 'it works?'; ?>
## Go check at the url xx.xx.xx.xx/test.php it must be working

## Set Hostname
# hostnamectl set-hostname ‘name’