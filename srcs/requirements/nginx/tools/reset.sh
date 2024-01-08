#!/bin/bash
sudo rm -rf /var/www/test.com/index.html
# sudo rm -rf /etc/nginx/sites-available/default
# sudo rm -rf /etc/nginx/sites-enabled/default
sudo unlink /etc/nginx/sites-enabled/default

