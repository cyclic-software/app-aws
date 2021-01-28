#!/usr/bin/env bash

set -exou pipefail

if [ -f 'yarn.lock' ]; then
	APP_TYPE='YARN'
	npm install --global yarn
	yarn install --cache-folder /tmp
elif [ -f 'package-lock.json' ] || [ -f 'package.json' ]; then
	APP_TYPE='NPM'
	npm install
elif [ -f 'requirements.txt' ]; then
	APP_TYPE='PIP'
	pip install -r requirements.txt
else
	echo 'Unknown app type. Going to just call install'
	./install
fi

export APP_TYPE
