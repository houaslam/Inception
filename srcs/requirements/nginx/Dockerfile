FROM debian:buster

RUN apt-get update && apt-get install nginx -y

COPY  ./tools/script.sh /

CMD ["./script.sh"]