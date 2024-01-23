FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/mariadb_setup.sh /
RUN chmod +x /mariadb_setup.sh

CMD ["/mariadb_setup.sh"]