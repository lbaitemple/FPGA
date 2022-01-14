FROM ubuntu:20.04
#RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="America/New_York" apt-get install -y tzdata
ENV TZ="America/New_York"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt upgrade -y
RUN apt-get install git libftdi1-2 libftdi1-dev libudev-dev cmake build-essential pkg-config -y
RUN git clone https://github.com/lbaitemple/openFPGALoader
RUN cd openFPGALoader/ && mkdir build && cd build && cmake .. && make && sudo make install
