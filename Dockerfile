FROM node:10-slim

RUN yarn global add heroku
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
