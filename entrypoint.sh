#!/bin/sh

# Validate `--app` parameter

# Validate process type arguement (web, worker, etc.)

eval heroku container:push --app $HEROKU_APP 
