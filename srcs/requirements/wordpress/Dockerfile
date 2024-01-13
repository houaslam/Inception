FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget php7.3 php-fpm php-mysql mariadb-client unzip -y
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip -d /var/www/
# RUN		chown -R root:root /var/www/wordpress

# COPY /etc/nginx/nginx.conf .

