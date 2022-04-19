FROM node:10-alpine
COPY . .
EXPOSE 3000
CMD ["node", "app/server.js"]
