FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl git

RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=houaslam.42.fr/UID=houaslam"
RUN mkdir -p /var/run/nginx
RUN mkdir -p /var/www/wordpress
RUN git clone https://github.com/designmodo/html-website-templates.git template
RUN mv /template/'Animated Landing Page Website Template' /var/www/wordpress/
RUN mv /var/www/wordpress/'Animated Landing Page Website Template' /var/www/wordpress/static

COPY  ./conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]