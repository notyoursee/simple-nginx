# Dockerfile
FROM nginx:latest

# Copy hello.txt from the repository to the Nginx web directory
COPY hello.txt /var/www/

# Update Nginx configuration to use /var/www as the main folder
RUN sed -i 's|root /usr/share/nginx/html;|root /var/www;|' /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
