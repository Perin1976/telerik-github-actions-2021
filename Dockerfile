FROM ubuntu:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY *.py /usr/src/app

