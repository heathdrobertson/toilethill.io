---
title: "Docker"
permalink: /notes/docker
excerpt: "Docker Containers & Images"
toc_label: "Docker TOC"
header:
    teaser: /assets/images/docker_teaser_image.png
    overlay_color: "#616261"
---


![WaterColor Image](https://raw.githubusercontent.com/heathdrobertson/tools/master/web_headers/claypots.jpg)

# Tools

## Build a Docker Image from a Dockerfile:

```bash
docker build --rm --build-arg USER=$(id -un) \
--build-arg USER_ID=$(id -u) \
--build-arg USER_GID=$(id -g) \
-t <dockerhub-user-name>/<image-name>:latest .
```

```bash
docker build --rm --build-arg USER=$(id -un) --build-arg USER_ID=$(id -u) --build-arg USER_GID=$(id -g) -t <dockerhub-user-name>/<image-name>:latest .
```
**e.g.**

```bash
docker build --rm --build-arg USER=$(id -un) --build-arg USER_ID=$(ID -u) --build-arg USER_GID=$(id -g) -t heathdrobertson/notebook_lab:latest .
```

## Run a container

```bash
docker run -it --init --name trade-mule \
--network toilethill-net -v $(pwd):/home/$(id -un)/codehappens \
-p 8888:8888 -p 8866:8866 heathdrobertson/notebook_lab:latest
```

## Dockerfile

### Users & Groups (Image Build & Containers)

```bash
ENV USER_NAME=docker
ENV USER_ID=12345
ENV GROUP_ID=23456

RUN addgroup --gid "$GROUP_ID" "$USER_NAME" \
    && adduser \
    --disabled-password \
    --gecos "" \
    --home "/home/$USER_NAME" \
    --ingroup "$USER_NAME" \
    --no-create-home \
    --uid "$USER_ID" \
    "$USER_NAME"
```

### References & Links

[IHaskell]: https://github.com/gibiansky/IHaskell.git
