# Stage 1: Build app
FROM node:23-alpine
# Set working directory
WORKDIR /app
# Install dependencies
COPY package.json package-lock.json ./
RUN npm ci
# Copy app source
COPY . .
# Expose the port your backend runs on
EXPOSE 4000
# Start the app
CMD ["npm", "start"]
