FROM debian:buster

RUN apt-get update && apt-get install vim redis-server php-redis -y


RUN service redis-server start
RUN sed -i 's/bind 127.0.0.1 ::1/bind 0.0.0.0/' /etc/redis/redis.conf

CMD ["redis-server", "--protected-mode", "no"]