#!/bin/bash
# Startup scripts
rm -f /web_api/tmp/pids/server.pid
bundle install
rails db:drop
rails db:create
rails db:migrate
rails db:seed
rails s -b 0.0.0.0