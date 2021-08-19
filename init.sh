#!/bin/bash
source `pwd`/env

docker exec -i $YOUR_DOCKER_MYSQL_NAME sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < `pwd`/sql/db-user.sql
