#! /bin/bash
service mariadb start \
    && sleep 5 \
    && mysql -e "CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;" \
    && mysql -e "CREATE USER IF NOT EXISTS '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD';" \
    && mysql -e "GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD';" \
    && mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';" \
    && mysql -e "FLUSH PRIVILEGES;" \
    && service mariadb stop

mysqld_safe