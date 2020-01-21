#!/bin/bash

APP=$1
TYPE=$2

docker build --no-cache --build-arg type="$TYPE" -t "$APP" .
