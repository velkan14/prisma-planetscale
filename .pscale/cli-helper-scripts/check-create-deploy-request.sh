#!/bin/bash

. use-pscale-docker-image.sh

BRANCH_NAME="$1"


. ps-create-helper-functions.sh
check-deploy-request "$DB_NAME" preview "$ORG_NAME"

if [ $? -eq 0 ]; then
    create-deploy-request "$DB_NAME" preview "$ORG_NAME"    
fi
echo creatediff
create-diff-for-ci "$DB_NAME" "$ORG_NAME" "$deploy_request_number" "$BRANCH_NAME"
echo $BRANCH_DIFF