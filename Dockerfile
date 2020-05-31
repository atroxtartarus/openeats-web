FROM node:8.11.1-alpine

# Create app directory
RUN mkdir /code
WORKDIR /code

# Install app dependencies
ADD . /code/

RUN apk update && apk add yarn python g++ make && rm -rf /var/cache/apk/*

# Run Yarn to install all dependencies
RUN yarn install --pure-lockfile
