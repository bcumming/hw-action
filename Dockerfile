FROM ubuntu

RUN apt-get update --yes \
    && apt-get install --yes wget curl git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
