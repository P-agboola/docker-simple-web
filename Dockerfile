# specify the base image
FROM  node:alpine

# Download and install the dependencies
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]