# syntax=docker/dockerfile:1
FROM node:23.0-alpine

WORKDIR /opt/visor-mqtt

RUN apk update
RUN apk add --no-cache python3 py3-pip make gcc g++ linux-headers udev

COPY package*.json ./

RUN npm install serialport --build-from-source
RUN npm ci --only=production

COPY . .

CMD [ "npm", "run", "prod" ]
