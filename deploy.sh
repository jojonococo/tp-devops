#!/bin/bash

IMAGE_NAME="devops-app"
CONTAINER_NAME="devops-container"
PORT=${1:-5000}

if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

docker build -t $IMAGE_NAME .

docker run -d -p $PORT:5000 --name $CONTAINER_NAME $IMAGE_NAME

echo "App déployée sur localhost:$PORT"
echo "Déploiement terminé"
