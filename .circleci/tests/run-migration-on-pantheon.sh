#!/bin/bash

# Make sure the source site is available.
terminus  env:wake $PANTHEON_D7_SITE.$PANTHEON_D7_BRANCH

# Report the status of migrations before and after running migrations.
terminus drush $SITE_ENV -- migrate-status
# Run all the migrations.
terminus drush $SITE_ENV -- migrate-import --all
# Report the status of migrations before and after running migrations.
terminus drush $SITE_ENV -- migrate-status
