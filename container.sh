#!/bin/bash

# Necesario hacer login antes
az group create -l westeurope -n platzi
az acr create --resource-group platzi --name jjplatzi --sku Basic
az acr list --resource-group platzi --query "[].{acrLoginServer:loginServer}" --output table

