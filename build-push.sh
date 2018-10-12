#!/bin/bash

DOCKER_USER="ben10k"
PACKAGE="openvpn-java"
VERSION="0.1.0"

set -e

echo "> 1. Building Docker image"
echo ""
docker build -t $DOCKER_USER/$PACKAGE:$VERSION .

echo ""
echo "> 2. Publishing Docker image to Docker Hub"
echo ""
#docker login -e $DOCKER_EMAIL -u $DOCKER_USER -p $DOCKER_PASS
docker push $DOCKER_USER/$PACKAGE:$VERSION
