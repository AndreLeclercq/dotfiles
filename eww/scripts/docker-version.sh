#!/bin/bash

DOCKER_VERSION=$(docker version --format '{{.Client.Version}}' 2>/dev/null)
DOCKER_CONTAINER_RUN=$(docker ps -q | wc -l)

if [ -n "$DOCKER_VERSION" ]; then
  echo "  $DOCKER_VERSION -  $DOCKER_CONTAINER_RUN"
else
  echo " ?!"
fi
