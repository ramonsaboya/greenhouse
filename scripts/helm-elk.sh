#!/bin/bash
curl -Lo helm.tar.gz https://get.helm.sh/helm-v2.15.2-linux-amd64.tar.gz
tar -zxvf helm.tar.gz 
sudo mv linux-amd64/helm /usr/local/bin/helm
helm init --history-max 200
helm repo update
helm install --name elastic-stack stable/elastic-stack