# Dockerfile
FROM node:12

# Create app directory
WORKDIR /usr/src/app

COPY . .
RUN npm install -g pm2 --registry=https://registry.npm.taobao.org
RUN npm install

EXPOSE 8080

CMD [ "node", "server.js" ]