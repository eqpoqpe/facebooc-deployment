FROM ubuntu:latest

RUN apt update && apt install -y curl && mkdir /opt/facebooc

ADD deploy.sh /opt/facebooc/deploy.sh

RUN chmod +x /opt/facebooc/deploy.sh

ENTRYPOINT ["sh", "-c", "/opt/facebooc/deploy.sh"]
