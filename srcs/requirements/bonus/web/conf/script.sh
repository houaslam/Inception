#! /bin/bash

openssl req -x509 -nodes \
-out /etc/nginx/ssl/inception.crt \
-keyout /etc/nginx/ssl/inception.key \
-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=houaslam.42.fr/UID=houaslam"

cd /var/www/wordpress
git clone https://github.com/houaslam/static.git

touch /etc/nginx/conf.d/static.conf