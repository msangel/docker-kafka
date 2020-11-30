#!/usr/bin/env bash
! docker container kill docker-kafka-interactive
! docker container rm   docker-kafka-interactive
docker run -it --rm -p 2181:2181 -p 9092:9092 --name docker-kafka-interactive docker-kafka-interactive