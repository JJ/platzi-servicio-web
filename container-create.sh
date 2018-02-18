#!/bin/bash

# Hay que hacer login en el registro
# Se usa con la clave en una variable de entorno AZ_CR_KEY
# export AZ_CR_KEY=$(az acr credential show --name jjplatzi --query "passwords[0].value" --out tsv)
az acr repository list --name jjplatzi --output table # Comprueba que existe
az container create -g platzi --name hitosv1 --image jjplatzi.azurecr.io/hitos:v1 --registry-password $AZ_CR_KEY
