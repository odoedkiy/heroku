FROM node:10-alpine

LABEL "com.github.actions.name"="GitHub Deployer for Heroku"
LABEL "com.github.actions.description"="Wraps the Heroku CLI to enable common Heroku commands."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"
ENV HEROKU_API_KEY "985065be-bedb-4f5b-a43b-4807761ef15e"
RUN yarn global add heroku
RUN apk update && apk add --no-cache \
	ca-certificates \
	nghttp2 \
	openssl \
  docker

ENTRYPOINT ["heroku"]
