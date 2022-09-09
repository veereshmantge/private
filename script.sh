#!/bin/bash

docker rm -f c1
# docker rmi veeereshmantgi/jenkins
docker build -t veeereshmantgi/jenkins .
docker images | grep jenkins
docker login -u veeereshmantgi -p Veer@1995
docker push veeereshmantgi/jenkins
docker image ls 
docker ps 
docker rmi veeereshmantgi/jenkins
docker run -itd -p 8082:80 --name c1 veeereshmantgi/jenkins /bin/bash
docker ps
