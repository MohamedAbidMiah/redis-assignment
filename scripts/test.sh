#!/bin/bash

set -e

BASE_URL="http://localhost/api"

echo "Testing FastAPI through NGINX Ingress..."
echo

echo "1. Testing root endpoint:"
curl --fail --show-error "$BASE_URL/"
echo
echo

echo "2. Storing a value in Redis:"
curl --fail --show-error \
  -X POST "$BASE_URL/cache?key=name&value=John"
echo
echo

echo "3. Retrieving the value from Redis:"
curl --fail --show-error "$BASE_URL/cache?key=name"
echo
echo

echo "All tests completed successfully."