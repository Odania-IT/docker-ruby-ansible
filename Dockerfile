FROM python:alpine
MAINTAINER Mike Petersen <mike@odania-it.de>

RUN apk add bash ruby ruby-bundler ruby-full ansible openssh-client openssh-keysign ruby-dev
RUN pip install awscli

RUN addgroup -g 1000 app \
	&& adduser -S -u 1000 -g app -s /bin/bash app
RUN mkdir -p /home/app/.gems
RUN chown 1000:1000 /home/app/.gems
USER app
WORKDIR /app
ENV PATH /usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/app/.local/bin

