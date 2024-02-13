#! /bin/bash

git clone https://github.com/houaslam/static.git /var/www/wordpress/static
nginx -g 'daemon off;'