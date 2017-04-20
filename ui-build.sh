#!/bin/bash
set -e

# Copy docs
cp www/documents.prod.json www/ui/documents.json
cp www/favicon.ico www/ui/src/favicon.ico

cd www/ui

# requires npm 6+
yarn install
TITLE='Movio API' PREFIX='/assets' APIDOC_HOST='/api' yarn run build

cp dist/prod/* ../public
