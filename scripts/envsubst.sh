#! /usr/bin/env sh

export $(cat .env)

FILEBEAT_MONIT=filebeat/monitor

envsubst < logstash.conf.default > logstash.conf
envsubst < $FILEBEAT_MONIT/filebeat.yml.default > $FILEBEAT_MONIT/filebeat.yml
envsubst < ./curator/curator.yml.default > ./curator/curator.yml
