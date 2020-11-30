#!/usr/bin/env bash

# https://ropenscilabs.github.io/r-docker-tutorial/04-Dockerhub.html

docker tag docker-kafka-interactive msangel/docker-kafka-interactive:latest
docker push msangel/docker-kafka-interactive:latest