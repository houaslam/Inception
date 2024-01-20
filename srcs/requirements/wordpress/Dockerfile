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
RUN service php7.4-fpm reload

# RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
# RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
# RUN	chown -R root:root /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN mkdir -p /var/www/wordpress
WORKDIR /var/www/wordpress
RUN wp core download --allow-root
# RUN rm -rf /var/www/wordpress/wp-config-sample.php
# COPY ./conf/wp-config.php /var/www/wordpress
# RUN service php7.4-fpm restart

# RUN sleep 5;
RUN wp config create	--allow-root \
--dbname=$MAIADB_DATABASE \
--dbuser=$MAIADB_USER \
--dbpass=$MAIADB_PASSWORD \
--dbhost=mariadb:3306 --path='/var/www/wordpress'
 

CMD ["/usr/sbin/php-fpm7.4", "-F"]
