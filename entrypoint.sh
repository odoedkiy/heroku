#!/bin/sh

# Validate `--app` parameter

# Validate process type arguement (web, worker, etc.)

eval heroku container:release --app $HEROKU_APP $*
