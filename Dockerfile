FROM node:16

# Create app directory
WORKDIR /usr/app

## COPY package files
COPY package*.json ./

# Installing dependencies
RUN npm install 

# Bundle app source
COPY . .

EXPOSE 8080
CMD ["node", "server.js"]