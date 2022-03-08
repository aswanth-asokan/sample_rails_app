#!/bin/bash

echo "==>Restarting Puma Service"
bundle install

if [ "$APPLICATION_NAME" == "PROD" ]
then
  RAILS_ENV=production rake db:migrate
elif [ "$APPLICATION_NAME" == "DEV" ]
then
  RAILS_ENV=staging rake db:migrate
fi
sudo service puma start

