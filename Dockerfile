FROM node:10-alpine
COPY . .
EXPOSE 3000
RUN npm install &&\
    npm install request &&\
    npm install express &&\
    npm install ejs
CMD ["node", "server.js"]
