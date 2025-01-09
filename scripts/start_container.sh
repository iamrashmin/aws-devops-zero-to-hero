#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull rp40867/simple-python-flask-app

# Run the Docker image as a container
docker run -d -p 5000:5000 rp40867/simple-python-flask-app

