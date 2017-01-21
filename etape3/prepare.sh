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

sleep 10

docker run -it                            \
           --name django                  \
           --net=epfl                     \
           greglebarbar/django bash 




