#!/usr/bin/env bash

set -exuo pipefail
echo "Running wrap.sh"

echo "$0"
dirname "$0"
cd "$(dirname "$0")"

APP_SRC=$1
echo "moving $APP_SRC to lambda/*"

ls -l "$APP_SRC"

cp -r "$APP_SRC" lambda/
