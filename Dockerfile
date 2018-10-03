FROM node:10-alpine

RUN apk --no-cache add docker && yarn global add heroku

ENTRYPOINT ["heroku"]
