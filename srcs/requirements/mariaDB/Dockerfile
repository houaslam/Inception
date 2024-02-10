FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

RUN sed -i 's/bind-address            = 127.0.0.1/bind-address            =*/' /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/conf.sh /
RUN chmod 777 /conf.sh

CMD ["/conf.sh"]