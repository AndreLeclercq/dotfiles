#!/bin/bash

LINUX_VERSION=$(uname -r)

if [ -n "$LINUX_VERSION" ]; then
  echo "  $LINUX_VERSION"
else
  echo " ?!"
fi
