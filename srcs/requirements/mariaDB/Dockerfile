FROM debian:buster

# Set the root password for MariaDB during installation
ENV MYSQL_ROOT_PASSWORD houaslam

RUN apt-get update && apt-get install -y mariadb-server

# Copy the custom configuration
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Start the MariaDB service, create a database and user, and set root password
RUN service mysql start && \
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS test;" && \
    mysql -u root -e "CREATE USER 'houaslam'@'localhost' IDENTIFIED BY 'houaslam';" && \
    mysql -u root -e "GRANT ALL PRIVILEGES ON test.* TO 'houaslam'@'localhost';" && \
    mysql -u root -e "FLUSH PRIVILEGES;" && \
    service mysql stop

CMD ["mysqld_safe"]


# FROM debian:buster

# RUN apt-get update && apt-get install -y mariadb-server
# COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# # Start the MariaDB service
# RUN service mysql start && \
#     mysql -u root -e "CREATE DATABASE IF NOT EXISTS test;" && \
#     mysql -u root -e "CREATE USER 'houaslam'@'localhost' IDENTIFIED BY 'houaslam';" && \
#     mysql -u root -e "GRANT ALL PRIVILEGES ON test.* TO 'houaslam'@'localhost';" && \
#     mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'houaslam';" && \
#     mysql -u root -e "FLUSH PRIVILEGES;" && \
#     service mysql stop

# CMD ["mysqld_safe"]
# # RUN service mysql start && \
# #     mysql -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};" && \
# #     mysql -e "CREATE USER '${SQL_SUSER}'@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';" && \
# #     mysql -e "GRANT ALL PRIVILEGES ON ${SQL_DATABASE}.* TO '${SQL_SUSER}'@'localhost';" && \
# #     mysql -e "FLUSH PRIVILEGES;" && \
# #     mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';" && \
# #     service mysql stop