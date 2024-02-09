FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server

COPY ./conf/conf.sh /
RUN chmod 777 /conf.sh

CMD ["/conf.sh"]