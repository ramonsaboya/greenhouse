#!/bin/bash
kubectl apply -f kubernetes/volumes.yaml
kubectl apply -f kubernetes/elasticsearch.yaml
kubectl apply -f kubernetes/logstash.yaml
kubectl apply -f kubernetes/kibana.yaml
kubectl apply -f kubernetes/rabbit.yaml
kubectl apply -f kubernetes/mongo.yaml
kubectl apply -f kubernetes/hystrix-dashboard.yaml
kubectl apply -f kubernetes/order-complete-updater.yaml
sleep 5
kubectl apply -f kubernetes/order-service.yaml
kubectl apply -f kubernetes/payment-distribution.yaml
kubectl apply -f kubernetes/payment-service.yaml
kubectl apply -f kubernetes/restaurant-service.yaml
kubectl apply -f kubernetes/ingress-gke.yaml
