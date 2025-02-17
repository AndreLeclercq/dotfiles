#!/bin/bash

GIT_VERSION=$(git --version | cut -d ' ' -f 3)

if [ -n "$GIT_VERSION" ]; then
  echo "󰊢 $GIT_VERSION"
else
  echo "󰊢 ?!"
fi
