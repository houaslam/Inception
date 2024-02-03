FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306

COPY ./conf/conf.sh /
RUN chmod 777 /conf.sh
ENTRYPOINT ["/conf.sh"]

CMD ["/conf.sh"]