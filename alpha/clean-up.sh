#!/usr/bin/env bash

rm -r build

cd src/kubernetes
./clean-up.sh

cd -

cd src/docker
./clean-up.sh