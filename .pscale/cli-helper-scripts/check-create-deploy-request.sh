#!/bin/bash

. use-pscale-docker-image.sh

BRANCH_NAME="$1"


. ps-create-helper-functions.sh
local deploy_number=$(check-deploy-request "$DB_NAME" preview "$ORG_NAME")

if [ $? -eq 0 ]; then
    deploy_number=create-deploy-request "$DB_NAME" preview "$ORG_NAME"
fi

create-diff-for-ci "$DB_NAME" "$ORG_NAME" "$BRANCH_NAME"