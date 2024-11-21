#!/bin/bash

# Build Docker image
docker build -t item-app:v1 .

# Tag image ke GitHub Container Registry
docker tag item-app:v1 ghcr.io/dudun124/item-app:v1

# Login ke GitHub Container Registry

echo $CR_PAT | docker login ghcr.io -u dudun124 --password-stdin

# Push Docker image ke GitHub Container Registry
docker push ghcr.io/dudun124/item-app:v1
