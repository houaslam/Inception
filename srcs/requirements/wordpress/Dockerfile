FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget php7.4 php-fpm php-mysql mariadb-client vim curl -y

RUN service php7.4-fpm start
RUN sed -i 's/^listen = .*/listen = wordpress:9000/' /etc/php/7.4/fpm/pool.d/www.conf
RUN sed -i 's/^;clear_env = .*/clear_env = no/' /etc/php/7.4/fpm/pool.d/www.conf
RUN service php7.4-fpm reload

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/wordpress
RUN	chown -R root:root /var/www/wordpress

COPY ./tools/entrypoint.sh /
RUN chmod +x /entrypoint.sh

WORKDIR /var/www/wordpress

CMD ["/entrypoint.sh"]