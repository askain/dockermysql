#!/bin/bash
source `pwd`/env

docker container stop $YOUR_DOCKER_MYSQL_NAME
docker container rm $YOUR_DOCKER_MYSQL_NAME
