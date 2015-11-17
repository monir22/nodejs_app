#FROM google/nodejs
FROM node

WORKDIR /app
ADD package.json /app/
RUN npm install
ADD . /app

EXPOSE 8000
#CMD []
#ENTRYPOINT ["/nodejs/bin/npm", "start"]
CMD ["node", "/app/app.js"]
