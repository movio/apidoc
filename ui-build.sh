#!/bin/bash
set -e

cd www/ui

# requires npm 6+
yarn install
TITLE='Movio API' PREFIX='/assets' APIDOC_HOST='/api' yarn run build

cp dist/prod/* ../public
