#!/usr/bin/env bash

rm -r build

./src/kubernetes/clean-up.sh
./src/docker/clean-up.sh