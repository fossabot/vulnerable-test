# Use a base image with a known vulnerability
FROM node:14-alpine

# Install a vulnerable package version
RUN npm install express@3.0.0

# Another example with a vulnerable package
RUN npm install lodash@4.17.10

# Install any other necessary packages
RUN npm install axios@0.18.0

# Set the working directory
WORKDIR /app

# Copy application files
COPY . .

# Run the application (just an example, not functional)
CMD ["node", "index.js"]