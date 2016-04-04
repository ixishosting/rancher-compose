FROM golang

WORKDIR /tmp

ADD https://github.com/rancher/rancher-compose/releases/download/v0.7.2/rancher-compose-linux-amd64-v0.7.2.tar.gz /tmp/

RUN tar xzvf rancher-compose-linux-amd64-v0.7.2.tar.gz && \
    mv rancher-compose-v0.7.2/rancher-compose /usr/bin && \
    apt-get update && \
    apt-get install -y nfs-common && \
    rm -rf /var/lib/apt/lists/* && \
    rm -Rf /tmp/*
