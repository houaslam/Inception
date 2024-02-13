#!/bin/bash

file_path="/var/www/wordpress/wp-config.php"
cd /var/www/wordpress

if [ -f "$file_path" ]; then
    echo "WordPress directory already exists."
else
    wp core download --allow-root
    sleep 2
    wp config create --dbname=$MARIADB_DATABASE \
    --dbuser=$MARIADB_USER \
    --dbpass=$MARIADB_PASSWORD \
    --dbhost=$MARIADB_HOST \
    --allow-root
    wp core install --url=$DOMAIN_NAME \
    --allow-root \
    --title=$WB_TITLE \
    --admin_user=$ADMIN_USER \
    --admin_password=$ADMIN_PASSWORD \
    --admin_email=$ADMIN_EMAIL
    wp user create $USER $USER_EMAIL \
    --role=$USER_ROLE \
    --user_pass=$USER_PASS \
    --allow-root

    sudo chmod -R 755 /var/www/wordpress
    chown -R www-data:www-data /var/www/wordpress
    wp config set WP_REDIS_HOST redis --allow-root
    wp plugin install redis-cache --activate --allow-root
    wp redis enable --allow-root
fi

/usr/sbin/php-fpm7.4 -F