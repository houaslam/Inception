FROM debian:buster

RUN apt-get update && apt-get install redis-server -y
RUN service redis-server start

CMD ["redis-server", " --protected-mode no"]