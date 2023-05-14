# Inception

## Introduction:
The goal of this project is to create a small infrastructure of different services that must be set up under specific rules. The entire project must be completed in a virtual machine, and Docker Compose must be used.

## Requirements:
- The containers must be built from stable version of Alpine or Debian, and it is forbidden to use services such as DockerHub.
- Docker container that contains NGINX with TLSv1.2 or TLSv1.3.
- Docker container that contains WordPress and php-fpm.
- Docker container that contains MariaDB.
- A volume that contains WordPress database.
- A second volume that contains WordPress website files.
- A docker-network that establishes the connection between containers.

## Docker
### What is Docker:
Docker is an open source project for building, shipping and running programs. It is a command line program that solves common software problems and simplify your experience installing, running, publishing and removing software. It accomplishes this by using an operating system technology called containers.
### Docker containers:
Containers are an abstraction at the app layer that packages code and dependencies together. Multiple containers can run on the same machine and share the OS kernel with other containers, each running as isolated processes in user space. 
### Docker image:
Docker image is a bundled snapshot of all the files that should be available to a program running inside a container. When you distribute software with Docker, you distribute these images, and the receiving computers create containers from them. Images are the shippable units in the Docker ecosystem. 
### Dockerfile:
A dockerfile is a text document that contains all the commands we would use to build an image. 
### Docker compose:
Docker compose is a tool that allows you to define and run multi-container docker applications. You can define a multi-container application in a single file, called a compose file, then use that file to create and start all the services and containers required for your application. 
A compose file is YAML file that defines the services, network, and volumes required for your application. 
**Volumes:** 
Volumes are a way to share and manage data between containers, and they provide several benefits such as:
- Data persistence: Volumes allow us to persist data even if the containers are removed or recreated. 
- Data sharing: Volumes enable sharing data between containers.
- Backup and restore: Volumes make it easier to backup and restore data. 
- Performance: Volumes can improve the performance of our containers by reducing the overhead of copying data between the container and the host filesystem. 
**Networks:**
A network is a virtual network that allows containers to communicate with each other, even if they are running on different hosts. By default, docker creates a bridge network for each docker host, which allows containers to communicate with each other using IP addresses assigned by docker. 
### Docker vs VM:
- Lightweight: Docker containers are lightweight because they share the host system's kernel and resources, unlike VM's that require a separate os for each instance.
- Portability: Docker containers are highly portable across different environments. Containers encapsulate the application and its dependencies ensuring consistent behavior.
- Isolation: Docker containers provide process level isolation, meaning each container runs in its own isolated environment.
- Scalability: Docker makes it easy to scale applications horizontally by spinning up multiple containers based on the same image. 
