FROM python:alpine
MAINTAINER Mike Petersen <mike@odania-it.de>

RUN apk add bash ruby ruby-bundler ruby-full ansible

RUN addgroup -g 1000 app \
	&& adduser -S -u 1000 -g app -s /bin/bash app
USER app
WORKDIR /app
ENV PATH /usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/app/.local/bin

