#!/bin/bash
kubectl delete ingress --all
kubectl delete deployment --all
kubectl delete pod --all
kubectl delete service --all
