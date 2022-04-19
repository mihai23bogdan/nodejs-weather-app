FROM node:10-alpine
WORKDIR /app
COPY app/package*.json ./
RUN npm install -g
COPY . .
EXPOSE 5000
CMD ["node", "app/server.js"]
