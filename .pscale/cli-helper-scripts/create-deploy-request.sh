#!/bin/bash

. use-pscale-docker-image.sh

BRANCH_NAME="$1"


. ps-create-helper-functions.sh
check-deploy-request "$DB_NAME" preview "$ORG_NAME"

if [ $? -ne 0 ]; then
    exit 0
else
    create-deploy-request "$DB_NAME" preview "$ORG_NAME"    
fi

create-diff-for-ci "$DB_NAME" "$ORG_NAME" "$deploy_request_number" "$BRANCH_NAME"