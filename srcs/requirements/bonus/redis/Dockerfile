FROM debian:buster

RUN apt-get update && apt-get install redis-server php-redis -y

COPY ./tools/script.sh /
RUN chmod +x /script.sh

CMD ["/script.sh"]