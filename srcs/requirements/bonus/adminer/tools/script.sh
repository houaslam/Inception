#! /bin/bash

cd /var/www/wordpress
wget -O /var/www/wordpress/adminer.php "https://www.adminer.org/latest.php"

/usr/sbin/php-fpm7.4 -F