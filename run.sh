#!/bin/bash

docker build -t logstash_udp_image -f ./docker/Dockerfile .

docker run -d --name logstash_udp --restart always \
    -p 5044:5044/udp -p 9600:9600 \
    -v $(pwd)/docker/logstash/logstash.conf:/etc/logstash/conf.d/logstash.conf \
    -v $(pwd)/docker/logstash/logstash.yml:/usr/share/logstash/config/logstash.yml \
    -v $(pwd)/docker/logstash/patterns:/opt/logstash/patterns \
    --env-file .env logstash_udp_image