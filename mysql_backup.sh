#!/bin/bash
outputfile=$1
export $(egrep -v '^#' .env | xargs)

mysqldump --column-statistics=0 -u $MYSQL_USERNAME -p$MYSQL_PASSWORD -P $MYSQL_PORT -h $MYSQL_HOST $MYSQL_DB > $outputfile