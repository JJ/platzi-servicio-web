#!/bin/bash

docker run --rm -it --expose 5959 -p 5959:5959 docker.elastic.co/logstash/logstash-oss:6.2.1 -e 'input {      tcp {     port => 5959     codec => json   } } output { stdout {} }'


