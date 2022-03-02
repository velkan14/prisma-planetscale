#!/bin/bash


command="docker run -e HOME=/tmp -v $HOME/.config/planetscale:/tmp/.config/planetscale -e PSCALE_ALLOW_NONINTERACTIVE_SHELL=true -p 127.0.0.1:3309:3306 --user $(id -u):$(id -g) --rm planetscale/pscale:${PSCALE_VERSION:-"latest"} connect $DB_NAME preview --port 3306 --host 0.0.0.0 --service-token $PLANETSCALE_SERVICE_TOKEN"
echo command
$command
docker ps