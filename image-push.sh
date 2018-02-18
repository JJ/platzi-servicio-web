#!/bin/bash

# Hay que hacer login en el registro
# az acr login --name jjplatzi
docker tag jjmerelo/platzi-hitos jjplatzi.azurecr.io/hitos:v1
docker push jjplatzi.azurecr.io/hitos:v1
az container create --name platzicg -g platzi --image jjplatzi.azurecr.io/hitos
az acr repository list --name jjplatzi --output table
