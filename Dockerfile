FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static content
RUN rm -rf ./*

# Copy the HTML and CSS files to the Nginx HTML directory
COPY index.html .


# Expose port 80 to serve the content
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]