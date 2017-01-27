#!/bin/bash

# @todo, pull in upstream updates, wipe and install drupal.
# Also, it might be cleaner to create an entirely new D8 site rather than making
# multidevs off of the same one repeatedly.
terminus env:create  $TERMINUS_SITE.dev $TERMINUS_ENV
