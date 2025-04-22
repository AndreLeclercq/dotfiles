#!/bin/bash

rust_version=$(rustc --version | cut -d ' ' -f 2)

if [ -n "$rust_version" ]; then
  echo "  $rust_version"
else
  echo "  \x20?!"
fi
