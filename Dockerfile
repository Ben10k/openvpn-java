FROM openjdk:8-jdk-alpine

LABEL version="0.1.0"
LABEL maintainer="b.taurosevicius@gmail.com"


RUN apk add --update openvpn bash git tzdata openssh && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
