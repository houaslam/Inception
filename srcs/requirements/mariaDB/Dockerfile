FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y
# COPY 
# RUN service start mariadb &&  \
#     mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};" && \
#     mysql -u root -e "CREATE USER '${SQL_USER}'@'hostname' IDENTIFIED BY '${SQL_PASSWORD}';" && \
#     mysql -u root -e "GRANT ALL PRIVILEGES ON '${SQL_DATABASE}' TO '${SQL_USER}' @'%' IDENTIFIED BY '${SQL_PASSWORD}';" && \
#     mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';" && \
#     mysql -u root -e "FLUSH PRIVILEGES;" && \
#     mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

RUN service start mariadb &&  \
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS test;" && \
    mysql -u root -e "CREATE USER 'houasla'@'hostname' IDENTIFIED BY passwd;" && \
    mysql -u root -e "GRANT ALL PRIVILEGES ON test.* TO 'houasla'@'%' IDENTIFIED BY 'passwd';" && \
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'passwd';" && \
    mysql -u root -e "FLUSH PRIVILEGES;" && \
    mysqladmin -u root -p passwd shutdown

CMD [ "cat", "etc/mysql/mariadb.conf.d/50-server.cnf" ]
# CMD [ "mysqld_safe" ]