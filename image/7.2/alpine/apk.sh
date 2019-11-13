#!/bin/bash

echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories

apk update && apk upgrade

set -xe \
	&& apk add --no-cache --virtual .build-deps \
		icu-dev \
		zlib-dev \
		git \
		icu-libs \
		g++ \
		make \
		autoconf \
		libxslt-dev \
 		zlib \
 		wget \
		ca-certificates \
		curl \
		apache-ant \
		libtool \
		libcurl \
		openssl-dev \
	&& apk add --no-cache \
		nodejs \
		npm
