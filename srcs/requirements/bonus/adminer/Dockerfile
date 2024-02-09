FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget php7.4 php-fpm php-mysql adminer -y

RUN service php7.4-fpm start
COPY ./tools/script.sh /
RUN chmod +x /script.sh

CMD [ "/script.sh" ]
