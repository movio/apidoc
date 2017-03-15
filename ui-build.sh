#!/bin/bash
set -e

cd www/ui

# requires npm 6+
yarn install
yarn run build

cp dist/prod/* ../public
