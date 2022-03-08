#!/bin/bash

echo "==>Copying env from S3"
if [ "$APPLICATION_NAME" == "PROD" ]
then
  /usr/local/bin/aws s3 cp s3://truckerbux-configs/.env-prod /var/www/truckerbux-web/.env
elif [ "$APPLICATION_NAME" == "DEV" ]
then
  /usr/local/bin/aws s3 cp s3://truckerbux-configs/.env-dev /var/www/truckerbux-web/.env
fi

