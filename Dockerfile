FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm i -g browserify
COPY . .
EXPOSE 3000
CMD [ "browserify", "client.js", "-o", "app-bundle.js; node server.js" ]