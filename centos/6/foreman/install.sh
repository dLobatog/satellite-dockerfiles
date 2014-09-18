#!/bin/bash

foreman-rake db:migrate
foreman-rake db:seed
foreman-rake permissions:reset username=admin password=changeme
