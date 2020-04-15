#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=travissmith94/sklearn-prediction:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo -n "Enter the docker hub password for travissmith94: "
read -s password
echo $password | docker login --username travissmith94 --password-stdin
docker tag sklearn-prediction:latest $dockerpath
docker image ls | grep travissmith94/sklearn

# Step 3:
# Push image to a docker repository
docker push $dockerpath
