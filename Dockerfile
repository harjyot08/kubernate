# Use the official Nginx image from the Docker registry
FROM nginx:latest

# Install git and clone the repository
RUN apt-get update && apt-get install -y git && \
    git clone https://github.com/harjyot08/my-car.git /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose the default Nginx port
EXPOSE 80

# Start Nginx in the foreground (this is the default entrypoint for the Nginx image)
CMD ["nginx", "-g", "daemon off;"]
