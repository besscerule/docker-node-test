FROM node:16.20.0

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm set strict-ssl false
RUN npm install

COPY . .

CMD [ "node", "server.js" ]
