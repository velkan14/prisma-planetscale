#!/bin/bash

docker run -d \
-e HOME=/tmp \
-e PSCALE_ALLOW_NONINTERACTIVE_SHELL=true \
-v $HOME/.config/planetscale:/tmp/.config/planetscale \
-p 127.0.0.1:3309:3306 \
--user $(id -u):$(id -g) \
--rm planetscale/pscale:${PSCALE_VERSION:-"latest"} \
connect $DB_NAME preview --port 3306 --host 0.0.0.0 --org $ORG_NAME --service-token $PLANETSCALE_SERVICE_TOKEN --service-token-name $PLANETSCALE_SERVICE_TOKEN_NAME