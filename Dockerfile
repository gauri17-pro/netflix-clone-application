FROM node:12.2.0-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .

ENV TMDB_KEY=7cd3c8e989611c94096b7fc2f0db1531

RUN npm install 
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
