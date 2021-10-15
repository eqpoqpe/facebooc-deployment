FROM ubuntu:latest

RUN apt update && apt install git && git clone https://github.com/jsver/facebooc
