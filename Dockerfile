# Use the official Node.js image as the base
FROM node:18-alpine AS deps

# Set the working directory inside the container
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the app's source code
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the app's port
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start"]
