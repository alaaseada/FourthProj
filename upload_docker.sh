#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=premiere

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository'

docker tag premiere:latest aseada/premiere:firstimage

docker push aseada/premiere:firstimage
