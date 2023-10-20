# Use an official Node runtime as the base image
FROM node:alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy all files to the container
COPY . .

# Build the React app for production
RUN npm run build

# Specify the command to run on container start
CMD ["npm", "start"]
