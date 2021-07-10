# Elastic Stack (with Traefik) on Docker Swarm

Elastic Stack (Elasticsearch, Logstash, Kibana) with Traefik deployed on a docker swarm cluster. 

Customize deploy.sh variables and docker-compose file according to the needs and run the script to deploy the stack to the docker swarm cluster.

By default it deploys three instances of Elasticsearch and forms the cluster. It also deploys 2 instances of Logstash and Kibana. The cluster employs Traefik for Kibana and Logstash HTTP input traffic. By default one can reach Kibana on http://$YOUR_DOMAIN/ and logstash on http://$YOUR_DOMAIN/logstash .




## Possible problems
 
Issue:
> max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]

Solution:

    # /!\ On host machine
    sysctl -w vm.max_map_count=262144

