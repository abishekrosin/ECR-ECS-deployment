# Use lightweight Nginx image
FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY index.html /usr/share/nginx/html/
COPY templatemo.html /usr/share/nginx/html/
COPY timer.html /usr/share/nginx/html/

# Copy CSS and JS
COPY templatemo-aurum-script.js /usr/share/nginx/html/
COPY templatemo-aurum-gold.css /usr/share/nginx/html/

# Copy images folder
COPY images/ /usr/share/nginx/html/images/

# Expose nginx port
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
