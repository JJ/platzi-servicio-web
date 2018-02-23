#!/bin/bash

# Primero levantar un nodo
docker-cloud nodecluster create -t 1 --tag platzi platzi-node digitalocean fra1 512mb
# docker-cloud nodecluster rm platzi-node
# Este nodo está en Frankfurt (fra1) y tiene el tamaño mínimo (512mb)
# Se destruye con docker-cloud nodecluster rm platzi-node

docker-cloud service run -p 80 --name servicioweb jjmerelo/platzi-servicio-web
# Comprueba la IP y el puerto
docker-cloud container ps --no-trunc

# Y haz curl para ver que todo va bien.
