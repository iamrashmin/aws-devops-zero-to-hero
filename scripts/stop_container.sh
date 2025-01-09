#!/bin/bash
set -e

echo "Starting stop_container.sh script..."

# Fetch running container IDs
containerId=$(docker ps -q)

# Debug: Print the retrieved container IDs
echo "Retrieved container IDs: '$containerId'"

if [ -z "$containerId" ]; then
  echo "No running containers to stop."
else
  echo "Stopping and removing container(s): $containerId"
  docker rm -f $containerId
  echo "Container(s) stopped and removed successfully."
fi
