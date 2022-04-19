FROM node:10-alpine
RUN npm install -g
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
