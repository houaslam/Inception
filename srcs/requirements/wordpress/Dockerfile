FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget php7.3 php-fpm php-mysql mariadb-client unzip -y

RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip -d /var/www/ && cd /var/www
RUN	chown -R root:root /var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
# COPY /etc/nginx/nginx.conf .

CMD ["php-fpm", "--nodaemonize"]