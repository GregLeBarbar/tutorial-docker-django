#!/bin/bash 

docker stop django 
docker stop nginx
docker stop mariadb

docker rm django 
docker rm nginx
docker rm mariadb

