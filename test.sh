#!/bin/bash

export $(cat .env)
# substitude env empty env var names
envsubst < logstash.conf.default > logstash.conf

