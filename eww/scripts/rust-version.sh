#!/bin/bash

RUST_VERSION=$(rustc --version | cut -d ' ' -f 2)

if [ -n "$RUST_VERSION" ]; then
  echo " $RUST_VERSION"
else
  echo " ?!"
fi
