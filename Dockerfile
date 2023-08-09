# Use the official ROS Noetic base image
FROM osrf/ros:noetic-desktop-full

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    libpopt-dev \
    liblua5.1-dev \
    libeigen3-dev \
    libglew1.5-dev \
    freeglut3-dev \
    libncurses5-dev \
    libjpeg8-dev \
    libgoogle-perftools-dev \
    libsuitesparse-dev \
    libblas-dev \
    liblapack-dev \
    libopenmpi-dev \
    libgoogle-glog-dev \
    libgflags-dev \
    libceres-dev \
    libtbb-dev \
    libqt5websockets5-dev \
    tmux \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    ros-noetic-velodyne-pointcloud \
    nvidia-utils-470 \
    git

# Set the working directory to the user's home directory
WORKDIR /home/zichaohu

# Specify an entrypoint command or shell
CMD ["bash"]