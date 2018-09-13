FROM node:10-alpine
RUN yarn global add heroku
ENTRYPOINT ["heroku"]
