#!/bin/bash

if [ -n "$1" ]; then
  docker stop $1
  docker rm $1
else
  docker-compose down
fi

docker-compose up --build $1
