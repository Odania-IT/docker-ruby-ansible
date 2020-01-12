FROM python:alpine
MAINTAINER Mike Petersen <mike@odania-it.de>

RUN apk add bash ruby ruby-bundler ansible

RUN addgroup app \
	&& adduser -S -u 401 -g app -s /bin/bash app
USER app
WORKDIR /app
ENV PATH /usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/app/.local/bin

