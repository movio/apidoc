#!/bin/bash
set -e

cd www/ui

# requires npm 6+
npm install
npm run build

cp build.prod/* ../public
