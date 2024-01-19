FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget php7.3 php-fpm php-mysql mariadb-client curl -y

RUN mkdir /var/www
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN service php7.4-fpm start

WORKDIR /var/www/html
RUN wp core download --allow-root
RUN touch /wp-config.sh
COPY ./conf/wp-config.sh /wp-config.sh
RUN chmod 777 /wp-config.sh
# ENTRYPOINT [ "/wp-config.sh" ]

CMD ["php-fpm7.4", "--nodaemonize"]
