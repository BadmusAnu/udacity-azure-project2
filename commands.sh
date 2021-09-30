#!/usr/bin/env bash

git clone git@github.com:acouprie/udacity-azure-project2.git
az webapp up -n udacity-azure-project2 -l eastus --sku B1
chmod +x make_predict_azure_app.sh && ./make_predict_azure_app.sh
az webapp log tail -g acouprie_rg_Linux_eastus -n udacity-azure-project2
az group delete -n acouprie_rg_Linux_eastus