Docker-python-opencv
================

Docker for Python-Opencv based on Debian sid

###Linux Package::  
 - python (2.7)  
 - python-pip  
 - python-virtualenv
 - python-opencv
 - python-matplotlib
 - 
 
### Usage
1. Update your python packages into `requirments.txt`
2. Edit virtualenv path in `bin/venv` default is `/tmp/env`
3. Build Docker images

```sh
$ sudo docker build -t <image_name> <Dockerfile>
```
4. Run docker with mount your directory into /app into docker container

```sh
$ sudo docker run -v <volume>:/app -v /tmp:/tmp <image_name> bin/venv <command>
```

#### Example
- Files structure

```sh
$ ls
app
$ tree
app
├── bin
│   └── venv
├── Dockerfile
├── main.py
├── README.md
└── requirements.txt
```

- Commands

```sh
$ sudo docker build -t py-opencv app
$ sudo docker run -v $PWD/app:/app -v /tmp:/tmp py-opencv bin/venv python main.py
```
