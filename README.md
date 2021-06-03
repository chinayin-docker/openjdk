# Debian Base Image

[![Docker Image CI](https://github.com/chinayin-docker/openjdk/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/chinayin-docker/openjdk/actions/workflows/ci.yml)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/chinayin/openjdk?sort=semver)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/chinayin/openjdk?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/chinayin/openjdk)

OpenJDK is an open-source implementation of the Java Platform, Standard Edition

### Supported tags and respective `Dockerfile` links

![](https://img.shields.io/docker/v/chinayin/openjdk/8-jdk)
![](https://img.shields.io/docker/v/chinayin/openjdk/11-jdk)
![](https://img.shields.io/docker/v/chinayin/openjdk/15-jdk)
![](https://img.shields.io/docker/v/chinayin/openjdk/16-jdk)

# Use OpenJDK

You can use the image directly, e.g.

```
docker run --rm -it chinayin/openjdk:16-jdk
```

The images are built daily and have the security release enabled, so will contain any security updates released more
than 24 hours ago.

You can also use the images as a base for your own Dockerfile:

```
FROM chinayin/openjdk:16-jdk
```
