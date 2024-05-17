ARG NODE_VERSION=16.0.0

# Install dependencies stage
FROM node:${NODE_VERSION}-alpine AS compile-image

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY ./package.json ./package-lock.json $APP_HOME/
RUN npm install

# Build stage
FROM node:${NODE_VERSION}-alpine AS runtime-image

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY --from=compile-image /app/node_modules $APP_HOME/node_modules
COPY . $APP_HOME

EXPOSE 3000

CMD [ "npm", "run", "start" ]