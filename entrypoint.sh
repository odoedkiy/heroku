#!/bin/sh

# Validate `--app` parameter

# Validate process type arguement (web, worker, etc.)

eval heroku apps:create --stack=container --region=us --app $HEROKU_APP --json $*
