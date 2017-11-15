#!/bin/bash

CREDENTIALS=$1
VOTE_DEPLOY_PATH=$2
RELEASE_TITLE=$3

curl -u $CREDENTIALS -v -H "Content-Type: application/json" $VOTE_DEPLOY_PATH -i -X POST -d '{"releaseTitle": "'$RELEASE_TITLE'", "releaseVariables": {"${user}": "iasalazar"}}' 
