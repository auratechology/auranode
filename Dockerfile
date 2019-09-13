FROM node:10.16.3-alpine
RUN apk --no-cache add git && apk --no-cache add openssh
RUN npm install pm2 -g

ARG PRIVATE_SSH_KEY

RUN mkdir /root/.ssh/ && \
    echo "$PRIVATE_SSH_KEY" > /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa && \
    touch /root/.ssh/known_hosts && \
    ssh-keyscan github.com >> /root/.ssh/known_hosts && \
    ssh-keyscan gitlab.aura.vn.ua >> /root/.ssh/known_hosts
