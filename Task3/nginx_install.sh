#!/bin/bash
 apt-get update && apt-get install -y nginx
systemctl start nginx.service
"Nginx installed successfully!"
 chown $USER /var/www/html
touch /var/www/html/index.html
echo "Hello World" > /var/www/html/index.html

OS_INFO=$(cat /etc/os-release)

echo $OS_INFO >> /var/www/html/index.html

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker $USER 
chmod 777 /var/run/docker.sock
