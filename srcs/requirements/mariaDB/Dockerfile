FROM debian:bullseye

ENV MARIADB_DATABASE=mariadb
ENV MARIADB_HOST=mariadb
ENV MARIADB_PASSWORD=password
ENV MARIADB_USER=mariadbuser
ENV MARIADB_ROOT_PASSWORD=rootpassword

RUN apt-get update && apt-get install -y mariadb-server

RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306

# COPY ./conf/conf.sh /
# RUN chmod 777 /conf.sh
# ENTRYPOINT ["/conf.sh"]

RUN service mariadb start \
    && sleep 5 \
    && mysql -e "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;" \
    && mysql -e "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD';" \
    && mysql -e "GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD';" \
    && mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';" \
    && mysql -e "FLUSH PRIVILEGES;" \
    && service mariadb stop

# CMD ["/conf.sh"]
CMD ["mysqld_safe"]