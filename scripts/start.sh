#!/bin/bash
minikube addons enable ingress
kubectl apply -f kubernetes/rabbit.yaml
kubectl apply -f kubernetes/mongo.yaml
kubectl apply -f kubernetes/order-complete-updater.yaml
sleep 5
kubectl apply -f kubernetes/order-service.yaml
kubectl apply -f kubernetes/payment-distribution.yaml
kubectl apply -f kubernetes/payment-service.yaml
kubectl apply -f kubernetes/restaurant-service.yaml
kubectl apply -f kubernetes/ingress.yaml
sleep 5
kubectl apply -f https://download.elastic.co/downloads/eck/1.0.0-beta1/all-in-one.yaml
sleep 10
kubectl apply -f kubernetes/elasticsearch.yaml
sleep 10
kubectl apply -f kubernetes/kibana.yaml
sleep 60
kubectl port-forward service/quickstart-kb-http 5601