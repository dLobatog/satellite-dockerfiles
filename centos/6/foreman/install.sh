#!/bin/bash

foreman-rake db:migrate
foreman-rake db:seed
ruby193-rails s
