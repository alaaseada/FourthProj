#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID
dockerpath="aseada/premiere:firstimage"

# Step 2
# Run in Docker Hub container with kubernetes
kubectl run premieredemo\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=premieredemo

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to host
kubectl port-forward premieredemo 8000:80

