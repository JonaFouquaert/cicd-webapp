FROM node:18-alpine

EXPOSE 3000

COPY package.json / 
COPY yarn.lock /

RUN yarn install

COPY index.js /
COPY persistence / 
COPY test.spec.js /

CMD yarn start