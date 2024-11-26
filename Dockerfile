# Stage 1: Build the app
FROM node:22-alpine AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Stage 2: Serve the app
FROM nginx:alpine

# Create target directories
RUN mkdir -p /usr/share/nginx/html/khmer_ttt_ui

# Copy the build output from the build stage
COPY --from=build /app/dist /usr/share/nginx/html/khmer_ttt_ui

# Copy nginx configuration  
# COPY ./nginx-config.conf /etc/nginx/conf.d/default.conf 

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
