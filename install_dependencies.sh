#!/bin/bash

# Update package lists
sudo apt-get update

# Install Apache HTTP server
sudo apt-get install -y apache2

# Create a simple HTML file
echo '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to My EC2 Server</title>
</head>
<body>
    <h1>Welcome to My EC2 Server!</h1>
    <p>This is a simple HTML page to test if your server is running correctly.</p>
</body>
</html>' | sudo tee /var/www/html/index.html

# Start the Apache server
sudo systemctl start apache2

# Enable Apache to start on boot
sudo systemctl enable apache2

# Print the status of the Apache server
sudo systemctl status apache2
