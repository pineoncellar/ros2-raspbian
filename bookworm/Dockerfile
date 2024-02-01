
FROM debian:bookworm
RUN echo "deb http://mirrors.ustc.edu.cn/debian bookworm main contrib" > /etc/apt/sources.list
RUN rm /etc/apt/sources.list.d/debian.sources
RUN apt update 
RUN DEBIAN_FRONTEND=noninteractive apt install --allow-downgrades -y libc6=2.36-9+deb12u3
RUN DEBIAN_FRONTEND=noninteractive apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt install -y build-essential git vim cmake sudo
RUN mkdir /opt/ros2-debian
COPY . /opt/ros2-debian/bookworm
COPY ros2.repos /opt/ros2-debian
RUN make -f /opt/ros2-debian/bookworm/Makefile apt-deps colcon-deps

WORKDIR /opt/ros2-debian
