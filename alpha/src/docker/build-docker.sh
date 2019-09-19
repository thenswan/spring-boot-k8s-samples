#!/usr/bin/env bash

# copy build file in current folder, otherwise we will go out of docker context
mkdir build
cp ././../../build/libs/alpha.jar build

docker build -f Dockerfile -t alpha .

rm -r build