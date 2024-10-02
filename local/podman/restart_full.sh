#!/usr/bin/env bash

POD_NAME=full_stack
echo "shutting down the pod"
podman-compose -p $POD_NAME -f full-stack-compose.yaml down
echo "destroying any residual volume data"
podman volume rm --all
echo "starting up the pod"
podman-compose -p $POD_NAME -f full-stack-compose.yaml up

