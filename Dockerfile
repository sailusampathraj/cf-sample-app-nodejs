FROM node:9

WORKDIR /app

RUN npm install 

COPY package.json .
RUN npm install

COPY . .

USER node
EXPOSE 3000

CMD ["npm", "run", "start"]
