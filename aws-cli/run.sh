#!/bin/bash

IMAGE_NAME=$1
USER_AND_GROUP=$2
USER_HOME=$3

A=( $@ )
extras="${A[@]:3}"

docker run --rm -it -v $USER_HOME/.aws:/home/.aws -v $PWD:/usr/app --user $USER_AND_GROUP $IMAGE_NAME $extras