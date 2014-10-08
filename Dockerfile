#Dockerfile for python-opencv

# Pull base image.
FROM debian:sid

MAINTAINER ibotdotout <ibot.out@gmail.com>

# Install packages.
RUN apt-get update
RUN apt-get install -y python python-dev python-pip python-virtualenv
RUN apt-get install -y python-opencv
RUN apt-get install -y python-matplotlib

# Python Testing packages.
RUN pip install mock
RUN pip install nose coverage rednose nose-cov nosexcover nose_xunitmp
RUN pip install watchdog
RUN pip install robotframework robotframework-pabot

# Define working directory.
WORKDIR /app

# Define default command.
CMD ["bash"]
