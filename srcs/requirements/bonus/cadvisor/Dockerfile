FROM debian:bullseye

RUN apt-get update && apt-get install git -y

RUN git clone https://github.com/google/cadvisor.git cadvisor && chmod +x cadvisor

CMD [ "cadvisor" ]