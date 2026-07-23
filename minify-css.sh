#!/bin/bash -ex

# Backup the original file before minifying
cp "$1" "$1.bak"

# Run cleancss and capture its exit status
set +e
cleancss -o "$1.min" "$1"
status=$?
set -e

if [ $status -eq 0 ]; then
  # Minification succeeded; replace original with minified version
  rm "$1.bak"
  mv "$1.min" "$1"
else
  # Minification failed; restore original and exit with non-zero status
  mv "$1.bak" "$1"
  rm -f "$1.min"
  exit $status
fi
