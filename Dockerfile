FROM node:alpine3.18

# Create app directory

WORKDIR /app

# Install app dependencies
COPY package.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 5555

CMD [ "npm", "run", "start" ]