#!/bin/bash

APP=$1

docker run -it --restart always --name "$APP" -d "$APP"
