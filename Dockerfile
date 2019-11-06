FROM node:12-buster-slim

WORKDIR /app

COPY package.json .
RUN npm install -g nodemon
RUN npm install --quiet

COPY . /app

EXPOSE 8281 9229 9230

ENTRYPOINT ["npm", "run", "start"]
