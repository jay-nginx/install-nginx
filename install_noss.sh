#!/bin/bash
sudo apt-get update -y
export DEBIAN_FRONTEND=noninteractive
sudo apt-get install -y libpq-dev
sudo wget https://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
echo "deb https://nginx.org/packages/mainline/ubuntu/ `lsb_release -cs` nginx" | sudo tee -a /etc/apt/sources.list
echo "deb-src https://nginx.org/packages/mainline/ubuntu/ `lsb_release -cs` nginx" | sudo tee -a /etc/apt/sources.list
sudo apt-get update -y
sudo apt-get install nginx -y
sleep 10
echo " Sleeping 10 seconds "
sudo service nginx start
sudo service nginx status
nginx -v

# vim: syntax=nginx
