#!/bin/bash

# Build Docker image
docker build -t karsajobs:latest .

# Tag image ke GitHub Container Registry
docker tag karsajobs:latest ghcr.io/dudun124/karsajobs:latest

# Login ke GitHub Container Registry
export CR_PAT=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
echo $CR_PAT | docker login ghcr.io -u dudun124 --password-stdin

# Push Docker image ke GitHub Container Registry
docker push ghcr.io/dudun124/karsajobs:latest