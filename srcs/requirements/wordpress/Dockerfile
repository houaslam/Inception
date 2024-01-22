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
COPY ./conf/entrypoint.sh /var/www/wordpress/entrypoint.sh
RUN chmod +x /var/www/wordpress/entrypoint.sh
WORKDIR /var/www/wordpress
RUN wp core download --allow-root 
RUN rm -rf /var/www/wordpress/wp-config-sample.php
COPY ./conf/wp-config.php /var/www/wordpress/wp-config.php
# RUN wp config create --allow-root --dbname=mariadb --dbuser=mariadbuser --dbpass=password --dbhost=mariadb --dbprefix=wp_ 
# RUN wp core install --url=houaslam.42.fr --allow-root --title=houaslam --admin_user=houaslam --admin_password=password --admin_email=houaslam@gmail.com

# ... other instructions

# Copy entrypoint script

# ENTRYPOINT ["/entrypoint.sh"]


# RUN service php7.4-fpm reload
# RUN wp core install \
# --url=houaslam.42.fr --allow-root \
# --path=`/var/www/wordpress` \
# --title=houaslam \
# --admin_user=houaslam \
# --admin_password=password \
# --admin_email=houaslam@gmail.gmail.com
 

CMD ["/usr/sbin/php-fpm7.4", "-F"]
