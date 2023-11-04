# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY ./src ./src

# Expose the port your app will listen on
EXPOSE 8001

# Define the command to start your Node.js application
CMD [ "node", "src/index.js" ]