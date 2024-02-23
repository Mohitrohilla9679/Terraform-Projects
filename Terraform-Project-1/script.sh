#!/bin/bash
sudo apt-get update && apt-get upgrade -y
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
echo "NGINX Installed Successfully" | sudo tee /var/www/html/index.html > /dev/null
sudo systemctl restart nginx