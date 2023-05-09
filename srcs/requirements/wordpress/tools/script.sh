# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/27 14:08:41 by abaioumy          #+#    #+#              #
#    Updated: 2023/05/08 11:29:58 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#download Wordpress core files to the specified directory
    cd /var/www/html/wordpress/
if ! wp core is-installed --allow-root; then
    wp core download --allow-root --force
    wp config create --dbname=wordpress --dbuser=ayman --dbpass=vulpes19 --dbhost=mariadb --allow-root
    wp core install --url=localhost --title=inception --admin_email=baioumyaymann@gmail.com --admin_user=abaioumy --admin_password=Baioumy123 --allow-root
else 
    echo "Wordpress already installed"
fi
exec "$@"