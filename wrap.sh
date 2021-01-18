#!/usr/bin/env bash

set -ex

echo "Running wrap.sh"

echo ">> rm -rf hello-world"
echo ">> mkdir app"
echo ">> cp serverless-wrapper-lambda.js app/"
echo ">> cp -r \${source-app} app/"
echo ">> cd app"
echo ">> npm install @vendia/serverless-express"
