#!/bin/bash

REGISTRY="sgtcoder"
PROJECT_NAME="ansible"

docker build  -t $REGISTRY/$PROJECT_NAME .
docker push $REGISTRY/$PROJECT_NAME
