#!/bin/bash
set -e

cd "$(dirname "$0")/../frontend"

echo "Building frontend Docker image..."
docker build -t starttech-frontend .

# Optional: push to container registry
# docker tag starttech-frontend <registry>/<repo>:latest
# docker push <registry>/<repo>:latest

echo "Frontend deployed successfully."
