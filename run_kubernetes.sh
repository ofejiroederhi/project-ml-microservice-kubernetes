#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub
# Step 1:
# This is your Docker ID/path
dockerpath=fjay47/devops_docker1
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy mypython-app --image=$dockerpath:latest
# Step 3:
# List kubernetes pods
kubectl get pod
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/mypython-app-fb44c4f49-jbcfg --address 0.0.0.0 8000:80