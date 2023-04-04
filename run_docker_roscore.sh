#!/bin/bash
# build image using Dockerfile
docker build .

# run the docker container
docker run -it -e DISPLAY=$DISPLAY -e nao_ip = $nao_ip --name ros_nao ros_nao_docker

# for MacOS (xhost need to be installed)
# 1. using ifconfig en0 find your ip address
# xhost YOUR_IP
# docker run -it -e DISPLAY=YOUR_IP:0 --name ros_nao ros_nao_docker

