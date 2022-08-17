#!/bin/bash

backupfile=$1
parentdir="$(dirname "$backupfile")"
export $(egrep -v '^#' .env | xargs)
aws s3 sync $parentdir s3://$S3_BUCKET/ --storage-class GLACIER 
