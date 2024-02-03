FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget -y

COPY ./tools/script.sh /
RUN chmod +x /script.sh

CMD [ "/script.sh" ]
