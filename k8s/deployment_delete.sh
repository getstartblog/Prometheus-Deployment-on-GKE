#!/bin/bash

echo "Deleting services"
kubectl delete -f prometheus-service.yaml --namespace="prometheus"
kubectl delete -f grafana-service.yaml --namespace="prometheus"

echo "Deleting deployments"
kubectl delete -f prometheus-deployment.yaml --namespace prometheus
kubectl delete -f grafana-deployment.yaml --namespace prometheus

echo "Deleting Service account"
kubectl delete -f rbac.yaml

echo "Delete Namespace"
kubectl delete ns prometheus

