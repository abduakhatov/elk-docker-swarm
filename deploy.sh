#!/bin/bash

# recreate network
docker network rm elastic
docker network create -d overlay elastic

# substitude env empty env var names
export $(cat .env)

LOGSTAH_PIPE=logstash/pipeline
LOGSTAH_CONF=logstash/config
KIBANA_CONF=kibana/config

envsubst < $LOGSTAH_PIPE/logstash.conf.default > $LOGSTAH_PIPE/logstash.conf
envsubst < $LOGSTAH_CONF/logstash.yml.default > $LOGSTAH_CONF/logstash.yml
envsubst < $KIBANA_CONF/kibana.yml > $KIBANA_CONF/kibana.yml

# deploy
docker-compose --env-file .env -f docker-compose.yml config > docker-stack.yml;
docker stack deploy -c docker-stack.yml elastic
