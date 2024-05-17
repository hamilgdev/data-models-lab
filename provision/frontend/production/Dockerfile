# ARG NODE_VERSION=16.0.0
# ARG NGINX_VERSION=1.21.1

# # Install dependencies stage
# FROM node:${NODE_VERSION}-alpine AS compile-image

# ENV APP_HOME /app
# WORKDIR $APP_HOME
# COPY ./package.json ./package-lock.json $APP_HOME/
# RUN npm ci

# # Build stage
# FROM node:${NODE_VERSION}-alpine AS runtime-image

# ENV APP_HOME /app
# WORKDIR $APP_HOME
# COPY --from=compile-image /app/node_modules $APP_HOME/node_modules
# COPY . $APP_HOME
# RUN npm run build

# # Bundle static assets with nginx
# FROM nginx:${NGINX_VERSION}-alpine AS production-image

# ENV APP_HOME /app
# WORKDIR $APP_HOME

# COPY --from=runtime-image /app/build /usr/share/nginx/html
# COPY default.conf.template /etc/nginx/templates/default.conf.template

# EXPOSE 80

# CMD ["nginx", "-g", "daemon off;"]
FROM node:16-alpine as builder 

WORKDIR /app
COPY package*.json ./ 
RUN npm ci  
COPY . . 
RUN npm run build 
FROM nginx:1.21.0-alpine as development
COPY --from=builder /app/build /usr/share/nginx/html 
COPY default.conf.template /etc/nginx/templates/default.conf.template
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]