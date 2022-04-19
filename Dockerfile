FROM node:10-alpine
RUN npm install express
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
