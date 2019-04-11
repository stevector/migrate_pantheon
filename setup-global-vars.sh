#!/bin/bash

set -ex

mkdir -p $HOME/.ssh && echo "StrictHostKeyChecking no" >> "$HOME/.ssh/config"
# Set up BASH_ENV if it was not set for us.
BASH_ENV=${BASH_ENV:-$HOME/.bashrc}

(
  echo 'export TERMINUS_ENV=${CIRCLE_BUILD_NUM}'
  echo 'export SITE_ENV=${TERMINUS_SITE}.${TERMINUS_ENV}'
) >> $BASH_ENV

source $BASH_ENV
