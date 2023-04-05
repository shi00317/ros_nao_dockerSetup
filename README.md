-------
### install docker first before start 

1. Clone the repo
```
	git clone https://github.com/shi00317/ros_nao_dockerSetup.git
```

2. The whole folder tree structure is here:
```
	.
	├── Dockerfile
	├── README.md
	├── boot_config.json
	├── pynaoqi-python2.7-2.5.5.5-linux64.zip
	├── run_docker_roscore.sh
	├── run_nao_bringup.sh
	└── run_naoqi_driver.sh
```

3.  Press the button on Nao and listen to the Nao IP address.  Then, set it as env variable.
```
#export you nao ip address
export nao_ip=10.133.242.103
```
	
4.  Run the **run_docker_roscore.sh** bash script to build the customized docker image.
```
bash run_docker_roscore.sh
```

5.  The previous bash will create **ros_nao_docker** image. Then  create and enter the **ros_nao** container to execute *roscore* and the following script.
```
#In three separate terminal Windows
roscore

#another terminal windos 
bash run_nao_bringup.sh

#another terminal Windows
bash run_naoqi_driver.sh
```





