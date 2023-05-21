#!/bin/bash
apt-get update && apt-get install -y make git wget zip

wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb
dpkg -i hugo_extended_0.84.0_Linux-64bit.deb

curl -sL https://deb.nodesource.com/setup_14.x | bash - \
	&& apt-get install -y --no-install-recommends \
	nodejs=14.* \
	# Cleanup APT cache to ease extension of this image
	&& apt-get clean \

 go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.52.2
 npm install -g markdownlint-cli
 npm install -g markdown-link-check
