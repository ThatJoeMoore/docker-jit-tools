#!/bin/bash

IMAGE_NAME=$1
USER_AND_GROUP=$2
USER_HOME=$3

docker run --rm -it -v $USER_HOME/.aws:/home/.aws --user $USER_AND_GROUP $IMAGE_NAME