#!/bin/bash

# Primero levantar un nodo
docker-cloud nodecluster create -t 1 --tag platzi platzi-node digitalocean fra1 512mb
# docker-cloud nodecluster rm platzi-node
# Este nodo está en Frankfurt (fra1) y tiene el tamaño mínimo (512mb)
# Se destruye con docker-cloud nodecluster rm platzi-node
