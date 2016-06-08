#!/bin/bash

export BEHAT_PARAMS='{"extensions" : {"Behat\\MinkExtension" : {"base_url" : "http://'$PANTHEON_BRANCH'-'$PANTHEON_SITE'.pantheonsite.io"} }}'
cd ~/migrate_pantheon/tests/circle && ./../../vendor/bin/behat --config=behat/config.yml
