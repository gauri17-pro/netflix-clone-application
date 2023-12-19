FROM node:12.2.0-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .

ARG API_KEY

ENV TMDB_KEY=${API_KEY}

RUN npm install 

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
