#!/usr/bin/env bash

# Use "--image-pull-policy Never" for "Docker desktop"
kubectl run sone --image alpha --port 8081 --image-pull-policy Never