#!/bin/bash

cd "$(dirname "$0")"

if [ ! -d ../qstar-app ]; then
  echo '### COULD NOT FIND ../qstar-app'
  echo ''
  echo 'Get it from https://github.com/TheSingularityIsHere/qstar-app'
  exit 1
fi

(cd ../qstar-app && npm run build)

set -e

rm -r ./app/*
cp -R ../qstar-app/dist/qstar-app/browser/* ./app/

echo ''
echo 'app ready:'
echo ''
echo 'git add ./app'
echo 'git commit'
echo 'git push prod main'
echo ''
