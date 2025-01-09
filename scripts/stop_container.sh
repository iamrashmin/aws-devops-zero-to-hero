#!/bin/bash
set -e

# Stop and delete running containers (if any)
echo "Stopping and removing all running containers..."

# Get the list of container IDs
containerIds=$(docker ps -q)

if [ -z "$containerIds" ]; then
  echo "No running containers to remove."
else
  # Remove all running containers forcefully
  docker rm -f $containerIds
  echo "Containers removed successfully."
fi
