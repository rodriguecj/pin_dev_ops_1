#!/bin/bash

echo "##################################"
echo "* Preparando BUILD imagen DOCKER *"
echo "##################################"

echo "**** Building image ****"
docker build -t angular-app:$BUILD_TAG . 