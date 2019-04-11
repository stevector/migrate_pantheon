#!/bin/bash

terminus upstream:updates:apply $TERMINUS_SITE.dev --yes --accept-upstream --updatedb
terminus upstream:updates:apply $PANTHEON_D7_SITE.dev --yes --accept-upstream --updatedb
terminus env:create $TERMINUS_SITE.dev $TERMINUS_ENV
