#! /bin/bash

cd /var/www/wordpress/adminer.php
wget "https://www.adminer.org/latest.php"
chown -R www-data:www-data /var/www/wordpress/adminer.php
chmod 755 /var/www/wordpress/adminer.php

tail -f
