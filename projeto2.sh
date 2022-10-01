#!/bin/bash

echo Start updating system
apt-get update -y
echo System has been updated

echo Start upgrating system
apt-get upgrade -y
echo System has been upgrated

echo Start installing apache
apt-get install apache2 -y
echo Apache has been installed

echo Start installing unzip
apt-get install unzip -y
echo unzip has been installed

echo Start copying site
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo Site has been copied and configured

