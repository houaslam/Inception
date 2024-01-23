#!/bin/bash

file_path="/var/www/wordpress/wp-config.php"
cd /var/www/wordpress
if [ -f "$file_path" ]; then
    echo "WordPress directory already exists."
else
    wp core download --allow-root 
    wp config create --dbname=mariadb \
    --dbuser=mariadbuser \
    --dbpass=password \
    --dbhost=mariadb \
    --dbprefix=wp_ \
    --allow-root
fi
sleep 2
wp core install --url=houaslam.42.fr \
    --allow-root \
    --title=houaslam \
    --admin_user=houaslam \
    --admin_password=password \
    --admin_email=houaslam@gmail.com
sleep 2
wp user create hajar editor@gmail.com \
 --role=editor \
 --user_pass=editor \
 --allow-root

/usr/sbin/php-fpm7.4 -F