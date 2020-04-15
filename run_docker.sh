#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

DOCKER_IMAGE_TAG=sklearn-prediction
# Step 1:
# Build image and add a descriptive tag
docker build -t $DOCKER_IMAGE_TAG .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 $DOCKER_IMAGE_TAG
