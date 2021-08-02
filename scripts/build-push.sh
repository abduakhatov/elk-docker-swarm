#! /usr/bin/env sh

# Exit in case of error
set -e

docker-compose --env-file .env -f docker-compose.yml build;
docker-compose --env-file .env -f docker-compose.yml push;
