#!/bin/bash

sudo apt update

sudo apt install apache2 -y

sudo chown vagrant /var/www/html/index.html

sudo chmod 744 /var/www/html/index.html

sudo echo "<h1>Hello</h1>" > /var/www/html/index.html


