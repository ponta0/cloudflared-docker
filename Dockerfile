FROM ubuntu:latest

RUN mkdir ~/.cloudflared
RUN apt-get update
RUN apt-get install -y wget
RUN cd /usr/local/bin && wget -O - https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz | tar xzvf -