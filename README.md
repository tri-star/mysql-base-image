mysql-base-image
===================================

# Overview
This projects includes simple Dockerfile which intend to setup GDB debugging environment quickly.

## Description
This image have following features:

* Download MySQL server, client packages
* Download MySQL source code.
* Locate source code at appropriate location(where GDB find).


## Usage

General usage is following.

Building(MySQL-5.6.17):
```
$ cd [project-dir]
$ cp Dockerfile.5.6.17 Dockerfile
$ docker build -t mysql-base:5.6.17 .
```

Running:
```
$ docker run -d mysql-base:5.6.17
```

Debugging(with docker 1.2, nsenter is required):
```
# docker-enter [container-id]

bash> ps | grep "mysqld"
#check pid of mysqld

bash> gdb -p [pid for mysqld]  /usr/sbin/mysqld
```

Copy source code to local machine:
```
sudo bash get_src.sh [container-id]
# source code will copy under ./src directory.
# if ./src already exists, they will removed.
```


## Author

[tri-star](https://github.com/tri-star)

