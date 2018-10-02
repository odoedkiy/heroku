FROM node:10-alpine

RUN yarn global add heroku
RUN echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories
RUN apk update && apk add --no-cache \
	ca-certificates \
	nghttp2 \
	openssl \
  	docker

ENTRYPOINT ["heroku"]
