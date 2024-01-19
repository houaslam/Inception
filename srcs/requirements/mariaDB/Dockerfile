FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

ENV MARIADB_DATABASE=mariadb
ENV MARIADB_PASSWORD=password
ENV MARIADB_USER=mariadbuser
ENV MARIADB_ROOT_PASSWORD=rootpassword

RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mariadb start \
    && sleep 5 \
    && mysql -e "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;" \
    && mysql -e "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD';" \
    && mysql -e "GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD';" \
    && mysql -e "FLUSH PRIVILEGES;" \
    && service mariadb stop

EXPOSE 3306

CMD ["mysqld"]