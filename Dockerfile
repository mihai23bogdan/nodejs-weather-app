FROM node:10-alpine
WORKDIR /app
COPY app/package*.json ./
RUN npm install -g
COPY . .
CMD ["node", "app/server.js"]
