#!/bin/bash

docker run -d                             \
           --name mariadb                 \
           -e MYSQL_ROOT_PASSWORD=root    \
           -e MYSQL_USER=django           \
           -e MYSQL_PASSWORD=django       \
           -e MYSQL_DATABASE=django       \
           -v mariadb:/var/lib/mysql      \
           --net=epfl                     \
           mariadb

sleep 5

docker run -d                             \
           --name django                  \
           --net=epfl                     \
           greglebarbar/vindubeaujolais

docker run -d                             \
           --name nginx                   \
           --net=epfl                     \
           -p 127.0.0.1:8888:80           \
           greglebarbar/nginx


