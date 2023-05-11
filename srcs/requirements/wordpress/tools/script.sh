# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/27 14:08:41 by abaioumy          #+#    #+#              #
#    Updated: 2023/05/11 14:12:53 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#download Wordpress core files to the specified directory
    cd /var/www/html/wordpress/
if ! wp core is-installed --allow-root; then
    wp core download --allow-root --force
    wp config create --dbname=$(WORDPRESS_DB_NAME) --dbuser=$(WORDPRESS_DB_USER) --dbpass=$(WORDPRESS_DB_PASSWORD) --dbhost=$(WORDPRESS_DB_HOST) --allow-root
    wp core install --url=$(WORDPRESS_URL) --title=$(WORDPRESS_TITLE) --admin_email=$(WORDPRESS_ADMIN_EMAIL) --admin_user=$(WORDPRESS_ADMIN_USER) --admin_password=$(WORDPRESS_ADMIN_PASSWORD) --allow-root
    wp user create $(WORDPRESS_USER_NAME) $(WORDPRESS_USER_EMAIL) --role=author --user_pass=$(WORDPRESS_USER_PASSWORD) --allow-root
else 
    echo "Wordpress already installed"
fi
exec "$@"