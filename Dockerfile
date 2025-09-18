# Use the official Node.js 18 image as a base
FROM node:18-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install application dependencies
RUN npm install --production

# Copy the rest of your application source code
COPY . .

# Cloud Run injects the PORT environment variable, so your app listens on it
# The EXPOSE instruction is more for documentation and networking configuration
EXPOSE 8080

# Define the command to run the application
CMD ["npm", "start"]
