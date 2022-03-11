#!/bin/bash
bundle install
RAILS_ENV=staging rake db:migrate
sudo service puma start

