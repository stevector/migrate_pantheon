#!/bin/bash

set -x
cd drupal8
terminus build-env:delete:ci $TERMINUS_SITE --keep=5