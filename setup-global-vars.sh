#!/bin/bash

set -ex

mkdir -p $HOME/.ssh && echo "StrictHostKeyChecking no" >> "$HOME/.ssh/config"

(
  echo 'export TERMINUS_ENV=${CIRCLE_BUILD_NUM}'
  echo 'export SITE_ENV=${TERMINUS_SITE}.${TERMINUS_ENV}'
) >> $BASH_ENV

source $BASH_ENV
