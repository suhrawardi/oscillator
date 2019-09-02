#!/bin/bash

if ! [ -x "$(command -v apio)" ]; then
  echo "Error: apio is not installed." >&2
  echo "You can install it with:" >&2
  echo "$ sudo apt install apio" >&2
  exit 1
fi

echo "apio verify";

apio verify;

echo "apio build";

apio build;

echo "apio upload";

apio upload;
