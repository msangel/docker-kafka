#!/usr/bin/env bash

if [ ! -z "$TOPIC" ]; then
    # wait kafka
    while ! nc -z localhost 9092; do sleep 0.1; done
    echo "setting topic: $TOPIC"
    $KAFKA_HOME/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic $TOPIC
fi

#echo "Opening network for input connections"
#
#docker_network=$(ip -o addr show dev eth0 | awk '$3 == "inet" {print $4}')
## open network for connections
#iptables \
#  --append OUTPUT \
#  --destination ${docker_network} \
#  --jump ACCEPT
