#!/bin/bash

TYPE=$1

if [ -n "$2" ]; then
  EXCHANGE="$2"
else
  EXCHANGE="$TYPE"
fi

./slave_build.sh "$EXCHANGE-worker" "$TYPE"
docker stop "$EXCHANGE-worker"
docker rm "$EXCHANGE-worker"
./slave_start.sh "$EXCHANGE-worker"
