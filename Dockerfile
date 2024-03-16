# Use the official Node.js image based on Alpine Linux with the latest LTS version
FROM node:alpine

# Set the working directory inside the container
WORKDIR .

# Copy package.json and package-lock.json to the working directory
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["node", "app.js"]