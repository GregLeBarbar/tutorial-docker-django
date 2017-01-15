#!/bin/bash 

docker stop django 
docker stop nginx

docker rm django 
docker rm nginx

