# Use the official Node.js image as the base image
FROM node:18-alpine

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Nest.js application
RUN npm run build

# Expose the port the API runs on
EXPOSE 5000

# Start the Nest.js application
CMD ["npm", "run", "start:prod"]
