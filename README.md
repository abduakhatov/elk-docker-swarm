# Elastic Stack (with Traefik) on Docker Swarm

Elastic Stack (Elasticsearch, Logstash, Kibana) with Traefik deployed on a docker swarm cluster. 

Customize deploy.sh variables and docker-compose file according to the needs and run the script to deploy the stack to the docker swarm cluster.

By default it deploys three instances of Elasticsearch and forms the cluster. It also deploys 2 instances of Logstash and Kibana. The cluster employs Traefik for Kibana and Logstash HTTP input traffic. By default one can reach Kibana on http://$YOUR_DOMAIN/ and logstash on http://$YOUR_DOMAIN/logstash .



## Blogs

#### Logstash

- [How to Get Started](https://logz.io/blog/logstash-tutorial/)

- [Guide to Logstash Plugins](https://logz.io/blog/logstash-plugins/)

- [filebeat improvements](https://www.sarulabs.com/post/5/2019-08-12/sending-docker-logs-to-elasticsearch-and-kibana-with-filebeat.html)

- [3 way of cotainer log shipping](https://logz.io/blog/docker-logging/)