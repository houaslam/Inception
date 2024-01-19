
sleep 5;
wp config create	--allow-root \
 --dbname='mariadb' \
 --dbuser='MyWordPressUser' \
 --dbpass='Pa5w0rD'\
 --dbhost='mariadb'\
 --path='/var/www/html'

                