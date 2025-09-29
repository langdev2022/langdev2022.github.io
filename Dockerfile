FROM node:lts-alpine

WORKDIR /app
EXPOSE 3003
COPY package*.json ./
COPY script.js ./
RUN npm install
COPY . .
RUN chown -R node /app
USER node
CMD ["npm", "run", "start"]