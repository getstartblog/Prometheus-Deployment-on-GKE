
echo "Create namespace to isolate the deployment"
kubectl create ns prometheus

echo "Create Deployment"
kubectl apply -f prometheus-deployment.yaml --namespace="prometheus"

echo "Create service to expose ports to access externally"
kubectl apply -f prometheus-service.yaml --namespace="prometheus"

echo "Get deployment status"
kubectl get deployment --namespace="prometheus"

echo "Get the pods details"
kubectl get pods -o wide  --namespace="prometheus"

echo "Get service information"
kubectl get svc  --namespace="prometheus"

echo "Describe the deployment"
kubectl describe deployment --namespace="prometheus"

echo "Describe the service"
kubectl describe svc --namespace="prometheus"
