#!/bin/bash
set -e

export TAG=${1:-latest}
export IMAGE_NAME="acr0dev0thromis20210de.azurecr.io/example"

echo -e "\033[36mBuilding Docker image $IMAGE_NAME:$TAG..."
docker build -t "$IMAGE_NAME:$TAG" application

echo -e "\033[36mPushing Docker image..."
docker push "$IMAGE_NAME:$TAG"
