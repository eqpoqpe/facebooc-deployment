FROM ubuntu:latest

RUN apt update && apt install -y curl && mkdir /opt/facebooc

ARG PORT=8080

ENV PORT=$PORT

ADD deploy.sh /opt/facebooc/deploy.sh

RUN chmod +x /opt/facebooc/deploy.sh

EXPOSE $PORT

ENTRYPOINT ["sh", "-c", "/opt/facebooc/deploy.sh"]
