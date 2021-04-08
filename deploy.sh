#!/bin/bash

export TRAEFIK_PUBLIC_TAG=traefik-public
export TRAEFIK_TAG=monitor.safed.ml
export STACK_NAME=safed
export ELASTICSEARCH_USERNAME=elastic
export ELASTICSEARCH_PASSWORD=changeme
export ELASTIC_VERSION=6.6.0
export DOMAIN=monitor.safed.ml
docker network rm elastic
docker network create -d overlay elastic
envsubst < logstash.conf.default > logstash.conf
docker stack deploy -c docker-compose.yml elastic
