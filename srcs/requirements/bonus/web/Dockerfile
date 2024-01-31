FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y 
RUN mkdir -p /var/www/wordpress
COPY tools/page.html /var/www/wordpress

CMD [ "tail", "-f" ]