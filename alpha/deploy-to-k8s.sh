#!/usr/bin/env bash

./gradlew clean build

cd src/docker
./build-docker.sh

cd -

cd src/kubernetes
kubectl create -f alpha-deployment.yaml
kubectl create -f alpha-service.yaml

cd -
