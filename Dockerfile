FROM node:lts-alpine
WORKDIR /usr/src/app
COPY --chown=node:node . .
RUN npm install
RUN npm install lite-server --save-dev
CMD ["npm", "run", "dev"]