FROM node:10-slim

LABEL "com.github.actions.name"="GitHub Deployer for Heroku"
LABEL "com.github.actions.description"="Wraps the Heroku CLI to enable common Heroku commands."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"

ENV DOCKERVERSION=18.06.1-ce
RUN apt-get update && apt-get -y --no-install-recommends install curl \
  && curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz \
  && rm -rf /var/lib/apt/lists/* \
  && yarn global add heroku
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["heroku"]
