#!/bin/bash

# recreate network
docker network rm elastic
docker network create -d overlay elastic

# substitude env empty env var names
export $(cat .env)
envsubst < logstash.conf.default > logstash.conf

# deploy
docker-compose --env-file .env -f docker-compose.yml config > docker-stack.yml;
docker stack deploy -c docker-stack.yml elastic
