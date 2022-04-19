FROM node:10-alpine
RUN npm install -g
COPY . .
EXPOSE 5000
CMD ["node", "app/server.js"]
