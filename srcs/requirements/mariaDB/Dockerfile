FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server
ENV MARIADB_DATABASE=mariadb
ENV MARIADB_ROOT_PASSWORD=MyR00tMARIADBPa$$5w0rD
ENV MARIADB_PASSWORD=Pa$$5w0rD
ENV MARIADB_USER=MyWordPressUser
RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mysql -u root -p${MARIADB_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS ${MARIADB_DATABASE};"
# RUN mysql -e "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';"
# RUN mysql -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';"
# RUN mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
# RUN mysql -e "FLUSH PRIVILEGES;"
# RUN mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown


# CMD ["exec mysqld_safe"]