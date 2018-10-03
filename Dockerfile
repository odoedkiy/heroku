FROM node:10-slim

RUN yarn global add heroku

ENTRYPOINT ["heroku", "apps:create"]
