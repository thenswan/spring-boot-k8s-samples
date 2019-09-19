#!/usr/bin/env bash

./gradlew clean build

cd src/docker
./build-docker.sh

cd -

kubectl create -f ./src/kubernetes/beta-deployment.yaml
kubectl create -f ./src/kubernetes/beta-service.yaml
