#! /bin/bash
sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

service mariadb start

mysql -e "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;" \
&& mysql -e "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD';" \
&& mysql -e "GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD';" \
&& mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';" \
&& mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$MARIADB_ROOT_PASSWORD shutdown

mysqld_safe