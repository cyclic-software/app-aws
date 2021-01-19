#!/usr/bin/env bash

set -ex

echo "$0"
dirname "$0"
# cd $(dirname $0)

echo "Running wrap.sh"

cp -nr app-aws/app src/app

cd src/app
npm install "@vendia/serverless-express"

# echo ">> npm install @vendia/serverless-express"
