#!/bin/bash
docker run -it \
--name mysql \
-p 3306:3306 \
-v $(pwd):/app \
-e MYSQL_DATABASE=security \
-e MYSQL_USER=root \
-e MYSQL_PASSWORD=111111 \
-e MYSQL_ROOT_PASSWORD=111111 \
appleshan/mysql-alpine
