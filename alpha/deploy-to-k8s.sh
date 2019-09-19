#!/usr/bin/env bash

./gradlew clean build

cd src/docker
./build-docker.sh

cd -

kubectl create -f ./src/kubernetes/alpha-deployment.yaml
kubectl create -f ./src/kubernetes/alpha-service.yaml
