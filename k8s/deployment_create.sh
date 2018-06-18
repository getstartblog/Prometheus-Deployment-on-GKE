#!/bin/bash
echo "Creating namespace to isolate the deployment"
kubectl create ns prometheus

echo "Creating Service Account"
kubectl apply -f rbac.yaml --namespace prometheus

echo "Creating Deployment"
kubectl apply -f prometheus-deployment.yaml --namespace="prometheus"
kubectl apply -f grafana-deployment.yaml --namespace="prometheus"

echo "Creating service to expose ports to access externally"
kubectl apply -f prometheus-service.yaml --namespace="prometheus"
kubectl apply -f grafana-service.yaml --namespace="prometheus"

echo "Get deployment status"
kubectl get deployment --namespace="prometheus"

echo "Get the pods details"
kubectl get pods -o wide  --namespace="prometheus"

echo "Get service information"
kubectl get svc  --namespace="prometheus"
