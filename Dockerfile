FROM node:10-alpine

LABEL "com.github.tasks.name"="GitHub Deployer for Heroku"
LABEL "com.github.tasks.icon"="upload-cloud"
LABEL "com.github.tasks.color"="6f42c1"

RUN yarn global add heroku

ENTRYPOINT ["heroku"]
