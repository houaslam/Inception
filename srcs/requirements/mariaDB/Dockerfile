FROM debian:bullseye

ENV MARIADB_DATABASE=database
ENV MARIADB_USER=yourusername
ENV MARIADB_PASSWORD=yourpassword

RUN apt-get update
RUN apt-get install -y mariadb-server

# # RUN service mysql start
# RUN mysql -u root -e "CREATE DATABASE \`${MARIADB_DATABASE}\`;" && \
#     mysql -u root -e "CREATE USER '${MARIADB_USER}'@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';" && \
#     mysql -u root -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO '${MARIADB_USER}'@'localhost';" && \
#     mysql -u root -e "FLUSH PRIVILEGES;"
# # RUN service mysql stop
# COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["mysql"]