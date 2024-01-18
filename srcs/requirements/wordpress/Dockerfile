FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget php7.3 php-fpm php-mysql mariadb-client curl -y

ENV WORDPRESS_DB_HOST=mariadb
ENV WORDPRESS_DB_PASSWORD=Pa$$5w0rD
ENV WORDPRESS_DB_USER=MyWordPressUser
ENV WORDPRESS_DB_NAME=mariadb


RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN service php7.4-fpm start
RUN wp core download --allow-root --path=/var/www/html
RUN rm -rf /var/www/html/wp-config-sample.php
COPY ./conf/wp-config.php /var/www/html


RUN wp core install --allow-root \
--url=houaslam.42.fr \
--title=houaslam \
--admin_user=admin \
--admin_password=asd123 \
--path=/var/www/html


# CMD ["php-fpm7.4", "--nodaemonize"]
