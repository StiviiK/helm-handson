#!/bin/bash
set -e

export IMAGE_NAME="acr0dev0thromis20210de.azurecr.io/example:$1"
echo "Building image $IMAGE_NAME"

echo "Building Docker image..."
docker build -t $IMAGE_NAME application

echo "Pushing Docker image..."
docker push $IMAGE_NAME
