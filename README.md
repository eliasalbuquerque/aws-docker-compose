# AWS, Docker and Docker Compose

This repository contains resources and materials for the Bootcamp program. It 
focuses on the practical application of Docker and Docker Compose, with 
deployment instructions for AWS. Hands-on project to gain experience with 
containerization and cloud services.



## Table of Content <!-- omit in toc -->
- [1. Fisrt steps with Docker and docker compose](#1-fisrt-steps-with-docker-and-docker-compose)



## 1. Fisrt steps with Docker and docker compose

This image represents a 'Hello World' application that I developed using Docker, 
Docker Compose and Nginx. The application, hosted locally, displays an HTML 
page. During the development process, the application was started and stopped 
several times for monitoring and adjustments. Additionally, the container was 
rebuilt and the application was explored in depth to fully understand its 
behavior and development flow.

Dockerfile:
```docker
FROM nginx
COPY hello /usr/share/nginx/html
```

Docker compose:
```yml
version: '3'
services:
  web-hello-world:
    build: .
    ports:
      - 8081:80
```

Web page:

![web page with docker, docker compose and nginx](./assets/hello-world-nginx.png)

The completion of this first part resulted in a web page running locally and the 
creation of the document [docker-guide.md](./docker-guide.md) with the main 
commands used in the development of the application.


