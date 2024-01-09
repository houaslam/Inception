#!/bin/bash

echo "hello from the nginx container"
bash -c 'echo "
server {
	listen 80;
	listen [::]:80;

	server_name test.com;

	root /var/www/test.com;
	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}
}" > /etc/nginx/sites-available/default'

ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled
nginx -s reload
nginx -g "daemon off;"
