#Dockerfile for python-opencv

# Pull base image.
FROM debian:sid

MAINTAINER ibotdotout <ibot.out@gmail.com>

# Install packages.
RUN apt-get update
RUN apt-get install -y python python-dev python-pip python-virtualenv
RUN apt-get install -y python-opencv
RUN apt-get install -y python-matplotlib

# Define working directory.
WORKDIR /app

# Define default command.
CMD ["bash"]
