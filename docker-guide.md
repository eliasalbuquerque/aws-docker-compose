<!--
title: 'docker-guide.md'
author: 'Elias Albuquerque'
created: '2024-01-13'
update: '2024-01-13'
-->


# Docker

The following commands are for WSL2 Arch Linux.


- [Docker info](#docker-info)
- [Running docker](#running-docker)
- [Run an web application with **Nginx**](#run-an-web-application-with-nginx)
- [Stop running containers](#stop-running-containers)
- [Docker compose](#docker-compose)


---

## Docker info

Verify the version:
```bash
docker --version
```

Test docker run:
```bash
docker run hello-world
```

List the running containers:
```bash
docker ps
```

List all local images:
```bash
docker images
```


## Running docker

Run docker:
```bash
sudo systemctl start docker
```

Running a container based in an image:
```bash
# [initiate docker][-ti: complement commands][image:tag image]
docker run -ti ubuntu:24.04
```

- `-t`: to launch a fake terminal
- `-i`: to interact with the terminal


Using *Dockerfile* to build a image:
```bash
# [docker build][from file][-t: using the tag, tag][directory]
docker build Dockerfile -t bootcamp .
```

- `-t`: tag

*Dockerfile* is a standard file. For any other name file it should be used 
`-f` (file):

```bash
docker build -f Dockerfile_ubuntu -t bootcamp .
```

To run this new build image:
```bash
# [initiate docker][-ti: complement commands][tag image]
docker run -ti bootcamp
```


## Run an web application with [**Nginx**](https://hub.docker.com/_/nginx)

Dockerfile:
```docker
FROM nginx
COPY hello /usr/share/nginx/html
```

Build nginx image:
```bash
docker build -t bootcamp-nginx .
```

Run image:
```bash
# [initiate docker][-d: detach][-p: run port][tag image]
docker run -d -p 8081:80 bootcamp-nginx
```

- `-d`: detach (background execution). It is not obligated to run in background.


## Stop running containers

Get *Container ID* with `docker ps`:
```bash
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS     NAMES 
14d7c9000266   nginx     "/docker-entrypoint.…"   39 minutes ago   Up 39 minutes   80/tcp    some-nginx
```

In above example, container id is *14d7c...*, then:
```bash
docker stop 14d7c
```


## Docker compose

Compose services that will be built and run according to a defined pattern.

Create a docker compose file:
```bash
touch docker-compose.yml
```

Create a service:
```yml
version: '3'
services:
  web:
    build: .
    ports:
      - 8081:80
```

Run the application:
```bash
❯ docker compose up -d
[+] Running 1/1
 ✔ Container aws-docker-compose-web-1  Started                             0.0s
```

Stop the application:
```bash
# [initiate compose][action]
❯ docker compose down
[+] Running 2/2
 ✔ Container aws-docker-compose-web-1  Removed                            10.5s 
 ✔ Network aws-docker-compose_default  Removed                             0.3s 
```

Update a service:
```bash
# [initiate compose build][service]
❯ docker compose build web
[+] Building 2.2s (8/8) FINISHED                                  docker:default
```


---


[GitHub: eliasalbuquerque/aws-docker-compose](https://github.com/eliasalbuquerque/aws-docker-compose)