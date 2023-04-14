#!/bin/bash
# AUTOMATIC WORDPRESS INSTALLER IN Ubuntu Server 20.04 LTS

# install LAMP Server
apt update  -y
apt upgrade -y
apt update  -y
apt upgrade -y
#install apache server
apt install -y apache2
 
apt install -y php
apt install -y php php-{pear,cgi,common,curl,mbstring,gd,mysqlnd,bcmath,json,xml,intl,zip,imap,imagick}

#Wordpress
cd /var/www/html
wget https://wordpress.org/wordpress-5.1.1.tar.gz
sudo tar -xzvf wordpress-5.1.1.tar.gz
sudo cp -r wordpress/* /var/www/html/
sudo rm -rf wordpress
sudo rm -rf wordpress-5.1.1.tar.gz
sudo chmod -R 755 wp-content
sudo chown -R apache:apache wp-content
sudo systemctl restart apache2
sudo update-rc.d apache2 defaults
sudo mv index.html index.html.old
