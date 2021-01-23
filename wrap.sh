#!/usr/bin/env bash

set -exuo pipefail
echo "Running wrap.sh"

echo "$0"
dirname "$0"
cd "$(dirname "$0")"

APP_SRC=$1

ls -l "$APP_SRC"

echo "moving $APP_SRC to app/lambda/*"

cp -r "$APP_SRC" app/lambda/
