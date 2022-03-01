#!/bin/bash

. use-pscale-docker-image.sh

echo "pscale connect $DB_NAME preview --port 3309"
pscale connect "$DB_NAME" preview --port 3309