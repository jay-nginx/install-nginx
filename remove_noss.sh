#!/bin/bash
nginx -v
sudo apt-get remove nginx nginx-common nginx-plus
sudo apt-get purge nginx nginx-common nginx-plus
sudo apt-get autoremove
nginx -v
