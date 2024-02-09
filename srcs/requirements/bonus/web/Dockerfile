FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl git

RUN mkdir -p /etc/nginx/ssl
RUN mkdir -p /var/www/wordpress
RUN touch /etc/nginx/conf.d/static.conf
RUN openssl req -x509 -nodes \
-out /etc/nginx/ssl/inception.crt \
-keyout /etc/nginx/ssl/inception.key \
-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=houaslam.42.fr/UID=houaslam"

RUN git clone https://github.com/houaslam/static.git /var/www/wordpress/static

COPY  ./conf/nginx.conf /etc/nginx/conf.d/static.conf
# COPY  ./conf/script.sh /
# RUN chmod +x /script.sh

# ENTRYPOINT [ "/script.sh" ]

CMD ["nginx", "-g", "daemon off;"]