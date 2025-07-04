#!/bin/bash

chown -R www-data:www-data /var/www/html/wordpress

mkdir -p /run/php

chmod 755 /run/php

chown -R root:root /var/www/html/wordpress

chmod -R 755 /var/www/html/wordpress

chown -R www-data:www-data /run/php

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

# wp core download --path=/var/www/html/wordpress --allow-root

# wp config create --dbhost=mariadb --dbname="${MYSQL_DATABASE}" --dbuser="${MYSQL_USER}" --dbpass="${MYSQL_ROOT_PASSWORD}" --path=/var/www/html/wordpress --allow-root

# wp core install --url="${URL}" --title="inception" --admin_user="${MYSQL_USER}" --admin_password="${MYSQL_ROOT_PASSWORD}" --admin_email="${AD_MAIL}" --path=/var/www/html/wordpress --allow-root

wp core download --path=/var/www/html/wordpress --allow-root

wp config create \
  --dbhost=mariadb \
  --dbname="${MYSQL_DATABASE}" \
  --dbuser="${MYSQL_USER}" \
  --dbpass="${MYSQL_ROOT_PASSWORD}" \
  --path=/var/www/html/wordpress --allow-root

wp core install \
  --url="${URL_LOCALHOST}:81" \
  --title="cloud-1" \
  --admin_user="${MYSQL_USER}" \
  --admin_password="${MYSQL_ROOT_PASSWORD}" \
  --admin_email="${AD_MAIL}" \
  --path=/var/www/html/wordpress --allow-root

wp theme install twentysixteen --path=/var/www/html/wordpress --activate --allow-root

rm -rf /var/www/html/wordpress/wp-config-sample.php

# # If accessing via IP
# wp option update siteurl "${URL_LOCALHOST}:81" --path=/var/www/html/wordpress --allow-root
# wp option update home "${URL_LOCALHOST}:81" --path=/var/www/html/wordpress --allow-root

php-fpm7.4 -F