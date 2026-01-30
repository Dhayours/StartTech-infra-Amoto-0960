#!/bin/bash
set -e

cd "$(dirname "$0")/../backend"

echo "Building backend Docker image..."
docker build -t starttech-backend .

# Optional: push to container registry
# docker tag starttech-backend <registry>/<repo>:latest
# docker push <registry>/<repo>:latest

echo "Backend deployed successfully."
