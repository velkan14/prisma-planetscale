#!/bin/bash

. use-pscale-docker-image.sh

pscale connect "$ORG_NAME-$DB_NAME" preview --port 3309