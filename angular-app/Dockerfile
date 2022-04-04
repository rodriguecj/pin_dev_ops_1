#!/usr/bin/env bash
### Stage 1: Build ### 
FROM node:14.17.3-alpine3.14 as build
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build --prod

### Stage 2: Run ###
FROM nginx:stable-alpine as prod-stage
COPY --from=build /app/dist/angular-app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]