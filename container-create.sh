#!/bin/bash

# Hay que hacer login en el registro
# Se usa con la clave en una variable de entorno AZ_CR_KEY
# export AZ_CR_KEY=$(az acr credential show --name jjplatzi --query "passwords[0].value")
az acr repository list --name jjplatzi --output table # Comprueba que existe
az container create --resource-group platzi --name jjplatzi --image hitos:v1 --cpu 1 --memory 1 --registry-login-server jjplatzi.azurecr.io --registry-username jjplatzi --registry-password $AZ_CR_KEY --ip-address public --ports 80
