#!/bin/bash

echo "##################################"
echo "* Preparando PUSH imagen DOCKER *"
echo "##################################"

REGISTER="rodriguecj"
REPOSITORY="app-devops-1"
IMAGE="angular-app"
DOCKERTOKEN="93f4dcf7-96a3-4ebe-8a45-e4bca73c277c"

echo "**** Loggin in ****"
docker login --username $REGISTER -p $DOCKERTOKEN
echo "**** Taggin image ****"
docker tag $IMAGE:$BUILD_TAG $REGISTER/$REPOSITORY:$BUILD_TAG
echo "**** Pushing image ****"
docker push $REGISTER/$REPOSITORY:$BUILD_TAG 