#!/bin/bash

# substitude env empty env var names
export $(cat .env)
LOGSTAH_PATH="logstash/pipeline"
envsubst < $LOGSTAH_PATH/logstash.conf.default > $LOGSTAH_PATH/logstash2.conf
