#!/bin/bash

# recreate network
docker network rm elastic
docker network create -d overlay elastic

# substitude env empty env var names
export $(cat .env)

# Envs subsitution
sh ./scripts/envsubst.sh

# build and push to registry
sh ./scripts/build-push.sh

# deploy
docker-compose --env-file .env -f docker-compose.yml config > docker-stack.yml;
docker-compose --env-file .env -f docker-compose.tools.yml config > docker-stack.tools.yml;
docker stack deploy -c docker-stack.yml -c docker-stack.tools.yml elastic
