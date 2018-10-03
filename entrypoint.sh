#!/bin/sh

# Validate `--app` parameter

# Validate process type arguement (web, worker, etc.)

eval heroku apps:destroy --app $HEROKU_APP $*
