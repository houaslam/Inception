FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

ENV MARIADB_DATABASE=mariadb
ENV MARIADB_ROOT_PASSWORD=MyR00tMARIADBPa$$5w0rD
ENV MARIADB_PASSWORD=Pa5w0rD
ENV MARIADB_USER=MyWordPressUser

RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mariadb start \
    && sleep 5 \
    && mysql -e "CREATE DATABASE IF NOT EXISTS mariadb;" \
    && mysql -e "CREATE USER IF NOT EXISTS 'MyWordPressUser'@'localhost' IDENTIFIED BY 'Pa5w0rD';" \
    && mysql -e "GRANT ALL PRIVILEGES ON mariadb.* TO 'MyWordPressUser'@'%' IDENTIFIED BY 'Pa5w0rD';" \
    && mysql -e "FLUSH PRIVILEGES;" \
    && service mariadb stop

EXPOSE 3306

CMD ["mysqld"]