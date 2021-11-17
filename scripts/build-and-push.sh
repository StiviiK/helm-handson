#!/bin/bash
set -e

export REGISTRY="acr0dev0thromis20210de.azurecr.io"
export IMAGE_NAME="${REGISTRY}/example"
export TAG=${1:-latest}

echo -e "\033[36mLogging in into the Registry..."
az acr login --name ${REGISTRY}

echo -e "\033[36mBuilding Docker image $IMAGE_NAME:$TAG..."
docker build -t "$IMAGE_NAME:$TAG" application

echo -e "\033[36mPushing Docker image..."
docker push "$IMAGE_NAME:$TAG"
