#!/usr/bin/env bash

# Use "--image-pull-policy Never" for "Docker desktop"
kubectl run sone --image beta --port 8081 --image-pull-policy Never