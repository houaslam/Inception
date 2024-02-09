FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes \
-out /etc/nginx/ssl/inception.crt \
-keyout /etc/nginx/ssl/inception.key \
-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=houaslam.42.fr/UID=houaslam"

RUN touch /etc/nginx/conf.d/houaslam.conf
COPY  ./conf/nginx.conf /etc/nginx/conf.d/houaslam.conf

CMD ["nginx", "-g", "daemon off;"]