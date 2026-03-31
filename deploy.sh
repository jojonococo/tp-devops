#!/bin/bash
VERSION=${1:-latest}
CONTAINER_NAME="devops-container"
PORT=5000
IMAGE_NAME="devops-app:$VERSION"

docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

docker run -d -p $PORT:5000 --name $CONTAINER_NAME $IMAGE_NAME

echo "Déploiement terminé : version $VERSION sur localhost:$PORT"
