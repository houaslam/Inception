#!/bin/bash

sudo touch /var/www/test.com/index.html
sudo bash -c 'echo " 
<!DOCTYPE html>
<html>
    <head>
        <title>My web page</title>
    </head>
    <body>
        <h1>Hello, world!</h1>
        <p>This is my first web page.</p>
        <p>It contains a 
             <strong>main heading</strong> and <em> paragraph </em>.
        </p>
    </body>
</html>" > /var/www/test.com/index.html'

# sudo bash -c 'echo "
# server {
	# listen 80;
	# listen [::]:80;

	# server_name test.com;

	# root /var/www/test.com;
	# index index.html;

	# location / {
	# 	try_files $uri $uri/ =404;
	# }
# }" > /etc/nginx/sites-available/default'

sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled
sudo systemctl reload nginx
# sudo rm -rf /etc/nginx/sites-enabled/default


