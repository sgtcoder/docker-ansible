#!/bin/bash

REGISTRY="sgtcoder"
PROJECT_NAME="ansible"

docker build --no-cache -t $REGISTRY/$PROJECT_NAME . || exit 1
docker push $REGISTRY/$PROJECT_NAME
