FROM ubuntu:18.04

ENV VERSION 1.3.5

RUN apt update && \
    apt install git curl libboost-all-dev libssl-dev -y && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash && \
    apt-get install -y nodejs && \
    curl -sL "https://github.com/dvandal/cryptonote-nodejs-pool/archive/$VERSION.tar.gz" | tar xz && \
    mv cryptonote-nodejs-pool-$VERSION /root/pool-server && \
    apt-get clean -y

COPY scripts /root/scripts

WORKDIR /root/pool-server

RUN npm update

CMD ["/bin/bash", "/root/scripts/start.sh"]
