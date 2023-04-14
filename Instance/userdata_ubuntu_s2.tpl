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
sudo mv index.html index.html.old
sudo touch index.html
echo "<h>---------SERVER2----------</h1>" > index.html