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
