# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the index.html to the default Nginx directory
COPY img /usr/share/nginx/html/img
COPY javascript /usr/share/nginx/html/javascript
COPY styles /usr/share/nginx/html/styles
COPY index.html /usr/share/nginx/html/index.html
COPY script.js /usr/share/nginx/html/script.js

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

# Run the container
# docker build -t nba-website .
# docker run -d -p 80:80 --name NBA-Website nba-website