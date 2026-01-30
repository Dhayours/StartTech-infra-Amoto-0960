#!/bin/bash
set -e

if [ $# -ne 2 ]; then
  echo "Usage: $0 <frontend-url> <backend-url>"
  exit 1
fi

FRONTEND_URL=$1
BACKEND_URL=$2

echo "Checking frontend health at $FRONTEND_URL..."
curl -f "$FRONTEND_URL/health" || { echo "Frontend is down"; exit 1; }

echo "Checking backend health at $BACKEND_URL..."
curl -f "$BACKEND_URL/health" || { echo "Backend is down"; exit 1; }

echo "All services are healthy."
