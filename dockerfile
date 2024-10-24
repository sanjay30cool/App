FROM node:20.14.0

WORKDIR /App

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 4200

CMD [ "npm start" ]