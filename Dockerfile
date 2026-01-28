# Use a small Nginx image
FROM nginx:alpine

# Copy your frontend files into the Nginx html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
