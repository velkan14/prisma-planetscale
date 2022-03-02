#!/bin/bash

. use-pscale-docker-image.sh

BRANCH_NAME="$1"

. set-db-and-org-and-branch-name.sh

. ps-create-helper-functions.sh
create-deploy-request "$DB_NAME" "$BRANCH_NAME" "$ORG_NAME"