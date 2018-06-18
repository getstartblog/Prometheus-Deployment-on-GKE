#!/bin/bash

PROJECT_ID=`gcloud config get-value project`
echo "Project ID is $PROJECT_ID"

echo "Building image from Dockerfile"
docker build -t prometheus .

echo "Tag the image with Registry name \n"
docker tag prometheus gcr.io/$PROJECT_ID/prometheus:latest

echo "Push the Docker image to the Container Registry "
docker push gcr.io/$PROJECT_ID/prometheus:latest

echo "Finished."

echo "Currently available images on machine"
docker images

echo "To pull the image from Container Registry onto your local machine, run the following command"
echo "docker pull gcr.io/$PROJECT_ID/prometheus:latest "
