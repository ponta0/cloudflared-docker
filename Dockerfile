FROM ubuntu:latest

RUN mkdir ~/.cloudflared
RUN apt-get update
RUN apt-get install -y wget
RUN cd /usr/local/bin && \
    wget -O cloudflared https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 && \
    chmod 777 cloudflared
