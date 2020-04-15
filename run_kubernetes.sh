#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=travissmith94/sklearn-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run sklearn-prediction --image=$dockerpath --port=8000

# Step 3:
# List kubernetes pods
kubectl rollout status deployment sklearn-prediction
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/sklearn-prediction 8000:80

