ARG NODE_VERSION=lts-buster

# Builder stage
FROM node:${NODE_VERSION} AS base

ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME

COPY . .
COPY package*.json $APP_HOME/
RUN npm install

RUN adduser --disabled-password nodejs
RUN chown -R nodejs:nodejs $APP_HOME
USER nodejs

EXPOSE 5001

CMD [ "npm", "run", "dev" ]
