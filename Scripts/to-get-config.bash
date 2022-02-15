## Before scripts

sudo apt install net-tools -y
sudo apt install git-all -y
sudo git config --global user.name "NathanRodet"
sudo git config --global user.mail rodetnathan.contact@gmail.com
sudo mkdir repos
sudo cd repos
sudo git clone https://github.com/NathanRodet/linux-project
sudo cd linux-project/
sudo cd Scripts/
sudo chmod +x conf-server.bash
sudo ./conf-server.bash
# ...

## Check Apache 2
# ifconfig | grep inet 
## Use the ip to check the localhost
# sudo nano /var/www/html/test.php
# Add <?php echo 'it works?'; ?>
## Go check at the url xx.xx.xx.xx/test.php it must be working

## Set Hostname
# hostnamectl set-hostname ‘name’