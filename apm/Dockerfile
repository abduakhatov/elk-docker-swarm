FROM docker.elastic.co/apm/apm-server:${ELASTIC_VERSION:-6.5.0}

COPY apm-server.yml /usr/share/apm-server/apm-server.yml

USER root

RUN chown root:apm-server /usr/share/apm-server/apm-server.yml

USER apm-server

