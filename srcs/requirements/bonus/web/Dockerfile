FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt install git -y
RUN mkdir -p /var/www/wordpress
RUN git clone https://github.com/designmodo/html-website-templates.git template
RUN mv /template/'Animated Landing Page Website Template' /var/www/wordpress/
RUN mv /var/www/wordpress/'Animated Landing Page Website Template' /var/www/wordpress/static

CMD [ "tail", "-f" ]