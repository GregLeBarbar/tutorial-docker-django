#!/bin/bash 

docker run -d --name django --net=epfl greglebarbar/django

docker run -d --name nginx --net=epfl -p 127.0.0.1:8888:80 greglebarbar/nginx



