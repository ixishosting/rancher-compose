FROM golang

WORKDIR /tmp

ADD https://github.com/rancher/rancher-compose/releases/download/v0.7.2/rancher-compose-linux-amd64-v0.7.2.tar.gz /tmp/

RUN tar xzvf rancher-compose-linux-amd64-v0.7.2.tar.gz

RUN mv rancher-compose-v0.7.2/rancher-compose /usr/bin

RUN rm -Rf /tmp/*
