# Use Node.js as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app
COPY . ./

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["npm", "start"]

