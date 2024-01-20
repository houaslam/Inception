FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget php7.4 php-fpm php-mysql mariadb-client vim curl -y

ENV MARIADB_DATABASE=mariadb
ENV MARIADB_PASSWORD=password
ENV MARIADB_USER=mariadbuser
ENV MARIADB_ROOT_PASSWORD=rootpassword

RUN service php7.4-fpm start
RUN sed -i 's/^listen = .*/listen = wordpress:9000/' /etc/php/7.4/fpm/pool.d/www.conf
RUN sed -i 's/^;clear_env = .*/clear_env = no/' /etc/php/7.4/fpm/pool.d/www.conf
RUN service php7.4-fpm restart
RUN mkdir /var/www
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html
RUN wp core download --allow-root
# RUN sleep 5;
# RUN wp config create	--allow-root \
#  --dbname='$MARIADB_DATABASE' \
#  --dbuser='$MARIADB_USER' \
#  --dbpass='$MARIADB_PASSWORD'\
#  --dbhost='mariadb'\
#  --path='/var/www/html'

CMD ["php-fpm7.4", "--nodaemonize"]
