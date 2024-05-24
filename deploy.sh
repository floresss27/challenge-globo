#!/bin/bash

echo "Starting Minikube..."
minikube start

echo "Applying Kubernetes manifests..."
kubectl apply -f api-comments-deployment.yaml \
              -f api-comments-service.yaml \
              -f grafana-deployment.yaml \
              -f grafana-service.yaml \
              -f prometheus-config.yaml \
              -f prometheus-deployment.yaml \
              -f prometheus-service.yaml

echo "Opening Minikube dashboard..."
minikube dashboard &

echo "Waiting for 3 minutes..."
sleep 180

echo "Getting service URLs..."
minikube service comentarios-api-service &
minikube service grafana &
minikube service prometheus-service &
