#!/bin/bash
set -e

echo "Rolling back infrastructure to previous state..."
cd "$(dirname "$0")/../terraform"

# Example: rollback last applied plan (requires backup)
terraform apply -target=<previous-resource> -auto-approve

echo "Rollback of infrastructure completed."

echo "Rolling back frontend and backend..."
cd "$(dirname "$0")/../frontend"
# Redeploy previous Docker image if needed
# docker run -d starttech-frontend:<previous-tag>

cd "$(dirname "$0")/../backend"
# docker run -d starttech-backend:<previous-tag>

echo "Rollback of applications completed."
