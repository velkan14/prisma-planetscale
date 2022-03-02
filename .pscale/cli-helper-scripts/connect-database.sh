#!/bin/bash

. use-pscale-docker-image.sh

echo "pscale connect $DB_NAME preview --port 3306 --host 0.0.0.0"
pscale connect "$DB_NAME" preview --port 3306 --host 0.0.0.0 --service-token "$PLANETSCALE_SERVICE_TOKEN"
docker ps