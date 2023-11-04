# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/app


RUN curl -f https://get.pnpm.io/v6.16.js | node - add --global pnpm

# Copy package.json and package-lock.json to the container
COPY package*.json pnpm-lock.yaml nodemon.json ./

RUN npm install -g nodemon

# Install application dependencies
RUN pnpm install --frozen-lockfile --prod

# Copy the rest of the application code to the container
COPY ./src ./src

# Expose the port your app will listen on
EXPOSE 8002

# Define the command to start your Node.js application
CMD [ "pnpm", "start" ]