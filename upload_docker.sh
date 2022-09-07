#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=fjay47/devops_docker1

# Step 2:  
# Authenticate & tag
cat ~/environment/mypassword.txt | docker login --username fjay47 --password-stdin
echo "Docker ID and Image: $dockerpath"
docker tag 155ecd5666a4 $dockerpath:latest
# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
