#!/bin/bash

file_path="/var/www/wordpress/wp-config.php"
cd /var/www/wordpress
# if [ -f "$file_path" ]; then
#     echo "WordPress directory already exists."
# else
#     wp core download --allow-root 
#     wp config create --dbname=mariadb \
#     --dbuser=mariadbuser \
#     --dbpass=password \
#     --dbhost=mariadb \
#     --dbprefix=wp_ \
#     --allow-root
# fi
# sleep 2
# wp core install --url=houaslam.42.fr \
#     --allow-root \
#     --title=houaslam \
#     --admin_user=houaslam \
#     --admin_password=password \
#     --admin_email=houaslam@gmail.com
# sleep 2
# wp user create hajar editor@gmail.com \
#  --role=editor \
#  --user_pass=editor \
#  --allow-root

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
sleep 2
wp core install --url=$DOMAIN_NAME \
    --allow-root \
    --title=$WB_TITLE \
    --admin_user=$ADMIN_USER \
    --admin_password=$ADMIN_PASSWORD \
    --admin_email=$ADMIN_EMAIL
sleep 2
wp user create $USER $USER_EMAIL \
 --role=$USER_ROLE \
 --user_pass=$USER_PASS \
 --allow-root

wp theme install variations
wp config set WP_REDIS_HOST redis --allow-root
wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root

/usr/sbin/php-fpm7.4 -F