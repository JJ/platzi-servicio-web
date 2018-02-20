#!/bin/bash

docker-cloud service run -p 80 --name servicioweb jjmerelo/platzi-servicio-web
# Comprueba la IP y el puerto
docker-cloud container ps --no-trunc

# Y haz curl para ver que todo va bien.
