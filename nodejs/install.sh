#!/bin/sh

# Install node packages
# Check for Homebrew
if test ! $(which npm)
then
  echo "  x You should probably install nodejs first."
  exit
fi

npm install -g jshint
