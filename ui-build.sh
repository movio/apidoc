#!/bin/bash
set -e

cd www/ui

# requires npm 6+
yarn install
PREFIX='/assets' yarn run build

cp dist/prod/* ../public
