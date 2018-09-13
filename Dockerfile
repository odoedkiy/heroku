FROM node:10-alpine

LABEL "com.github.tasks.name"="GitHub Deployer for Heroku"
LABEL "com.github.tasks.icon"="upload-cloud"
LABEL "com.github.tasks.color"="purple"

RUN yarn global add heroku

ENTRYPOINT ["heroku"]
