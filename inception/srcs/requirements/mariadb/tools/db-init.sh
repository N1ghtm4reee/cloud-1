#!/bin/bash

mkdir -p run/mysqld
chown -R mysql:mysql /run/mysqld

chown -R mysql:mysql /run/mysqld

mkdir -p /var/log/mysql /var/lib/mysql

chown -R mysql:mysql /var/lib/mysql /var/log/mysql
chmod -R 755 /var/lib/mysql /var/log/mysql

cat <<EOF > /etc/mysql/init.sql
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;

CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

EXIT;
EOF

mariadb-install-db

mysqld_safe