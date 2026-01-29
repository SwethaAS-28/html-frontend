# Use nginx as a lightweight web server
FROM nginx:alpine

# Copy all frontend files to nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
