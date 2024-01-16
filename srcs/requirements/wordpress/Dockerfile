FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget php7.3 php-fpm php-mysql mariadb-client -y

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
COPY ./conf/wp-config.php /var/www/wodpress/wp-config.php
RUN wp core install --url=houaslam.42.fr --title=houaslam --admin_user=admin --admin_password=asd123 
# add


# CMD ["php-fpm", "--nodaemonize"]