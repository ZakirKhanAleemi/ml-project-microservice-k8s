#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
ockerpath="zakirkhan/udacity-ml-app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $dockerpath --image=zakirkhan/udacity-ml-app:v4 --port=80


# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity-ml-app --type=LoadBalancer --port=80
minikube service udacity-ml-app

