FROM debian:buster

RUN apt-get update && apt-get install redis-server -y

COPY ./tools/script.sh /
RUN chmod +x /script.sh

CMD ["/script.sh"]