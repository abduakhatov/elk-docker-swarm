#!/bin/bash

# docker network rm elastic
# docker network create -d overlay elastic

# envsubst < logstash.conf.default > logstash.conf
# docker stack deploy -c docker-compose.yml elastic





# sudo docker stack deploy -c docker-stack.yml --with-registry-auth myid-$ENVIRONMENT


# ------------

set -e


envsubst < logstash.conf.default > logstash.conf
docker-compose --env-file .env -f docker-compose.yml config > docker-stack.yml;
docker stack deploy -c docker-stack.yml elastic