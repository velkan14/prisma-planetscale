#!/bin/bash

. use-pscale-docker-image.sh

BRANCH_NAME="$1"


. ps-create-helper-functions.sh
check-deploy-request "$DB_NAME" preview "$ORG_NAME"

if [ -z "$?" ]
then
    exit 0
fi

create-deploy-request "$DB_NAME" preview "$ORG_NAME"