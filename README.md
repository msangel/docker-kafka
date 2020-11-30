this is just interactive clone of 
https://github.com/wlsc/docker-kafka

best run with: 
```shell script
docker run -it --rm -p 2181:2181 -p 9092:9092 --env AUTO_CREATE_TOPICS=true --env ADVERTISED_HOST=localhost --name docker-kafka-interactive msangel/docker-kafka-interactive:latest
```