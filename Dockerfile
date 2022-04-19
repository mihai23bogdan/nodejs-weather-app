FROM node:10-alpine
RUN npm install
COPY . .
EXPOSE 5000
EXPOSE 3000
CMD ["node", "server.js"]
