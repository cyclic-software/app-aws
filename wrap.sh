#!/usr/bin/env bash

set -ex

echo "$0"
dirname "$0"
# cd $(dirname $0)

echo "Running wrap.sh"

# cp -nr app-aws/app/ src/

cp app-aws/app/template.yaml src/
cp app-aws/app/main/_lambda.js src/main/_lambda.js

cd src/main
npm install "@vendia/serverless-express"

# echo ">> npm install @vendia/serverless-express"
