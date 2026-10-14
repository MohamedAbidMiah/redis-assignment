#!/bin/bash

set -e

echo "Starting Redis + FastAPI deployment..."

echo "Applying Redis ConfigMap..."
kubectl apply -f k8s/redis-configmap.yaml

echo "Applying Redis Secret..."
kubectl apply -f k8s/redis-secret.yaml

echo "Applying Redis Deployment..."
kubectl apply -f k8s/redis-deployments.yaml

echo "Applying Redis Service..."
kubectl apply -f k8s/redis-service.yaml

echo "Applying FastAPI Deployment..."
kubectl apply -f k8s/deployment.yaml

echo "Applying FastAPI Service..."
kubectl apply -f k8s/service.yaml

echo
echo "Deployment complete."
echo
echo "Current Pods:"
kubectl get pods

echo
echo "Current Services:"
kubectl get services