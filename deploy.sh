#!/bin/bash
echo "stopping old container..."
docker stop devops-container 2>/dev/null
echo "removing old container..."
docker rm devops-container 2>/dev/null
echo "Building docker image..."
docker build -t devops-project .
echo "running container..."
docker run -d -p 8080:80 --name devops-container devops-project
echo "deployment successful "
