#!/bin/bash
source `pwd`/env

docker exec -it $YOUR_DOCKER_MYSQL_NAME sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"'
