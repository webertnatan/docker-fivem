#!/bin/bash

cd /root/docker-fivem
docker compose down
docker compose up -d --build