From osrf/ros:kinetic-desktop
LABEL creater="shi00317@umn.edu"
LABEL version='1.0'


# install all apt package for nao robot
RUN apt-get update
RUN apt-get install -y git wget unzip terminator\
    && apt-get install -y ros-kinetic-nao-robot ros-kinetic-naoqi-driver

# clean apt list to reduce storage size
Run rm -rf /var/lib/apt/lists/* && apt-get clean

# install naoqi2.1 driver
WORKDIR /naoqi
COPY ./pynaoqi-python2.7-2.5.5.5-linux64.zip .
RUN unzip /naoqi/pynaoqi-python2.7-2.5.5.5-linux64.zip
RUN rm  /naoqi/pynaoqi-python2.7-2.5.5.5-linux64.zip
RUN echo "export PYTHONPATH=/naoqi/pynaoqi-python2.7-2.5.5.5-linux64/lib/python2.7/site-packages:$PYTHONPATH" >> ~/.bashrc


# |||||||Naoqi 2.1||||||||
# RUN wget -P ~/naoqi https://community-static.aldebaran.com/resources/2.1.4.13/sdk-python/pynaoqi-python2.7-2.1.4.13-linux64.tar.gz
# Run tar xzf ~/naoqi/pynaoqi-python2.7-2.1.4.13-linux64.tar.gz --directory ~/naoqi/
# Run rm ~/naoqi/pynaoqi-python2.7-2.1.4.13-linux64.tar.gz
# RUN echo 'export PYTHONPATH=${PYTHONPATH}:!/naoqi/pynaoqi-python2.7-2.1.4.13-linux64' >> ~/.bashrc
# RUN echo 'export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:~/naoqi/pynaoqi-python2.7-2.1.4.13-linux64' >> ~/.bashrc
# |||||||Naoqi 2.1||||||||


# RUN source ~/.bashrc
# RUN python -c 'import naoqi'

# RUN /bin/bash -c "source /ros_entrypoint.sh \
#     && mkdir -p ./home/naoqi_ws/src \
#     && cd ./home/naoqi_ws/src && git clone https://github.com/ros-naoqi/nao_interaction.git \
#     && git clone https://github.com/ros-naoqi/naoqi_bridge.git \
#     && git clone https://github.com/ros-naoqi/nao_robot.git \
#     && cd .. && ls &&catkin_make"
# RUN cd naoqi && git clone https://github.com/shi00317/ros_nao.git

