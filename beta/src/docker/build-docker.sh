#!/usr/bin/env bash

# copy build file in current folder, otherwise we will go out of docker context
mkdir build
cp ././../../build/libs/beta.jar build

docker build -f Dockerfile -t beta .

rm -r build