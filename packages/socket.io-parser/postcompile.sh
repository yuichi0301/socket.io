#!/bin/bash

cp ./support/package.cjs.json ./build/cjs/package.json
cp ./support/package.esm.json ./build/esm/package.json

cp -r ./build/esm/ ./build/esm-debug/

for file in ./build/esm/*.js; do
  sed -i '' '/debug(/d' "$file"
done
