FROM node:24

WORKDIR /backend-application

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 5003

CMD ["npm", "start"]