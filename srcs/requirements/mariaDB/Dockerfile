FROM debian:buster

ENV MARIADB_DATABASE=database

RUN apt-get update && apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN service mysql start && \
    sleep 5 && \
    mysql -e "CREATE DATABASE IF NOT EXISTS \`${MARIADB_DATABASE}\`;" && \
    mysql -e "CREATE USER '${MARIADB_USER}'@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';" && \
    mysql -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO '${MARIADB_USER}'@'localhost';" && \
    mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';" && \
    mysql -e "FLUSH PRIVILEGES;" && \
    service mysql stop

CMD ["mysqld", "-root"]
