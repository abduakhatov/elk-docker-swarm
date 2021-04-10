#!/bin/bash

export DOMAIN=localhost
export STACK_NAME=safed
export TRAEFIK_PUBLIC_NETWORK=traefik-public
export TRAEFIK_TAG=safed.ml
export TRAEFIK_PUBLIC_TAG=traefik-public
export DEFAULT_NETWORK=elastic-default-network
export DEFAULT_NETWORK_TYPE=bridge

export ELASTICSEARCH_USERNAME=elastic
export ELASTICSEARCH_PASSWORD=changeme
export ELASTIC_VERSION=6.6.0
export DOMAIN=monitor.safed.ml
# docker network rm elastic
# docker network create -d overlay elastic
envsubst < logstash.conf.default > logstash.conf
docker stack deploy -c docker-compose.yml elastic
