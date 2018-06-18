#!/bin/bash

echo "Deploying local registry. If registry already deployed, this step will fail"
docker run -d -p 5000:5000 --restart always --name registry registry:2

echo "Build docker image from Dockerfile"
docker build -t k8s_prometheus .

echo "Tag docker image to local registry"
docker tag k8s_prometheus localhost:5000/k8s_prometheus


echo "Push docker image to local registry"
docker push localhost:5000/k8s_prometheus

echo "Finished. Check available images using 'docker images' command.\n"
