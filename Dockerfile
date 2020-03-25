FROM node:13.10.1-alpine3.10
RUN apk --no-cache add git && apk --no-cache add openssh
RUN npm install pm2 -g

