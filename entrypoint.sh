#!/bin/sh

# Validate `--app` parameter
if [ -z "$HEROKU_APP"]
then
  # ORG not set
  echo "Environment Variable required: HEROKU_APP"
  exit 1
fi
# Validate process type arguement (web, worker, etc.)

heroku container:login 
heroku container:push --app $HEROKU_APP $HEROKU_PROCESS_NAME
eval heroku container:release --app $HEROKU_APP $HEROKU_PROCESS_NAME
