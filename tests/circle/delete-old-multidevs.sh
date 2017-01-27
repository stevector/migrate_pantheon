#!/bin/bash

set -x
cd drupal8
git remote -v
git status
git branch -a
terminus build-env:delete:ci $TERMINUS_SITE --keep=5