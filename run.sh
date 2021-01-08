#!/usr/bin/env bash
! docker container kill docker-kafka-interactive
! docker container rm   docker-kafka-interactive

docker run -it --rm -p 2181:2181 -p 9092:9092 \
                --cap-add=NET_ADMIN \
                --env AUTO_CREATE_TOPICS=true \
                --env ADVERTISED_HOST=localhost  \
                --env TOPIC=deliverability-queue \
                --name docker-kafka-interactive \
                msangel/docker-kafka-interactive:latest
