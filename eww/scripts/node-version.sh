#!/bin/sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

NODE_VERSION=$(node --version 2>/dev/null)
RESULT="  $NODE_VERSION"

if [ -n "$NODE_VERSION" ]; then
  echo "  $NODE_VERSION"
else
  echo " ?!"
fi
