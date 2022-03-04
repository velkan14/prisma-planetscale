#!/bin/bash

. use-pscale-docker-image.sh

BRANCH_NAME="$1"

. set-db-and-org-and-branch-name.sh

. ps-create-helper-functions.sh
check-deploy-request "$DB_NAME" preview "$ORG_NAME"
create-deploy-request "$DB_NAME" preview "$ORG_NAME"