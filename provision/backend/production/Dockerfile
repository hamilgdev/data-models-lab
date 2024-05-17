ARG NODE_VERSION=lts-buster

# Builder stage
FROM node:${NODE_VERSION} AS builder

ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

COPY package*.json $APP_HOME/
RUN npm ci
COPY . .

EXPOSE 5001

CMD [ "npm", "start" ]
