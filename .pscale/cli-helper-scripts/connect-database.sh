#!/bin/bash

. use-pscale-docker-image.sh

echo "pscale connect $ORG_NAME-$DB_NAME preview --port 3309"
pscale connect "$ORG_NAME-$DB_NAME" preview --port 3309