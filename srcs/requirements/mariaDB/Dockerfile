FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

# =========env=============
ENV MARIADB_DATABASE=mariadb
ENV MARIADB_ROOT_PASSWORD=MyR00tMARIADBPa$$5w0rD
ENV MARIADB_PASSWORD=Pa$$5w0rD
ENV MARIADB_USER=MyWordPressUser
# ==========================

RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN sleep 5
RUN  service mariadb start

RUN  echo "CREATE DATABASE IF NOT EXISTS  test " > mysql
RUN  echo "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';" >> mysql
RUN  echo "GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';" >> mysql
RUN  echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';" >> mysql
RUN  echo "FLUSH PRIVILEGES;" >> mysql
RUN echo "mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown"  >> mysql


# CMD ["mysql"]