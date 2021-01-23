#!/usr/bin/env bash

set -ex

echo "$0"
dirname "$0"
# cd $(dirname $0)

echo "Running wrap.sh"

cp -r app-aws/app/ src/
