#!/bin/bash
# build image using Dockerfile
docker build -t ros_nao_docker .

export network_interface=wlo1

# run the docker container
docker run -it -e DISPLAY=$DISPLAY -e nao_ip=$nao_ip -e network_interface=$network_interface --network host  --name ros_nao ros_nao_docker

# for MacOS (xhost need to be installed)
# 1. using ifconfig en0 find your ip address
# xhost YOUR_IP
# docker run -it -e DISPLAY=YOUR_IP:0 --name ros_nao ros_nao_docker

