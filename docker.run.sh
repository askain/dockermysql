#!/bin/bash
source `pwd`/env

docker run --name $YOUR_DOCKER_MYSQL_NAME \
-p 3306:3306 \
-p 33060:33060 \
--net $YOUR_DOCKER_NETWORK_NAME \
-v `pwd`/var/lib/mysql:/var/lib/mysql \
-v `pwd`/etc/mysql/mysql.conf.d:/etc/mysql/mysql.conf.d \
-e MYSQL_USER=$YOUR_MYSQL_USER \
-e MYSQL_PASSWORD=$YOUR_MYSQL_PASSWORD \
-e MYSQL_ROOT_PASSWORD=$YOUR_MYSQL_ROOT_PASSWORD \
--restart="unless-stopped" \
-d \
mysql:5.7
