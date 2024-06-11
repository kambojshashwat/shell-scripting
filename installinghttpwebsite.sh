#!/bin/bash

#This Script will help to install Httpd and Create a Website of Coffee Shop

sudo su 
yum install httpd -y
systemctl start httpd
systemctl enable httpd

cd /var/www/html/
wget "https://www.free-css.com/assets/files/free-css-templates/download/page292/yogast.zip"
yum install unzip
unzip yogast.zip
rm -rvf yogast.zip
mv /var/www/html/yogast-html/* /var/www/html/
