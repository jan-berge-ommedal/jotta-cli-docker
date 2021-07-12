#!/bin/bash
set -x

docker build -t jotta-cli .
docker rm -f jotta-cli
docker run \
-d \
--name jotta-cli \
--restart=always \
-v /var/lib/jottad:/var/lib/jottad \
-v /data:/data \
jotta-cli
