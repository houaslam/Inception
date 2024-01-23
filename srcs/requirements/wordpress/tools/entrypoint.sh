#!/bin/bash

file_path="/var/www/wordpress/wp-config.php"

cd /var/www/wordpress

if [ -f "$file_path" ]; then
    echo "WordPress directory already exists."
else
    wp core download --allow-root 
    wp config create --dbname=$MARIADB_DATABASE \
    --dbuser=$MARIADB_USER \
    --dbpass=$MARIADB_PASSWORD \
    --dbhost=$MARIADB_HOST \
    --dbprefix=wp_ \
    --allow-root
fi

wp core install --url=houaslam.42.fr\
 --allow-root \
 --title=houaslam \
 --admin_user=houaslam \
 --admin_password=password \
 --admin_email=houaslam@gmail.com

wp user create hajar "hajar@gmail.com"\
    --allow-root \
    --role=editor \
    --user_pass=editor_pass

/usr/sbin/php-fpm7.4 -F