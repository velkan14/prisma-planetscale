#!/bin/bash

. use-pscale-docker-image.sh

BRANCH_NAME="$1"

. set-db-and-org-and-branch-name.sh

. ps-create-helper-functions.sh
exists=check-deploy-request "$DB_NAME" preview "$ORG_NAME"

if [ exists ]
then
    exit 0
fi

create-deploy-request "$DB_NAME" preview "$ORG_NAME"