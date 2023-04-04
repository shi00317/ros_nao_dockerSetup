#!/bin/bash

source source /ros_entrypoint.sh
roslaunch naoqi_driver naoqi_driver.launch nao_ip:=<ip>  network_interface:=<interface>