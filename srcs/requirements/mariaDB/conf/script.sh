service mariadb start

echo "CREATE DATABASE IF NOT EXISTS  test " > mysql
echo "CREATE USER IF NOT EXISTS \`${MARIADB_USER}\`@'localhost' IDENTIFIED BY '${MARIADB_PASSWORD}';" >> mysql
echo "GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';" >> mysql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';" >> mysql
echo "FLUSH PRIVILEGES;" >> mysql
echo "mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown"  >> mysql
echo exit >> mysql

service --status-all