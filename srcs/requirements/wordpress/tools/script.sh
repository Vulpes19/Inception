# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/27 14:08:41 by abaioumy          #+#    #+#              #
#    Updated: 2023/04/28 11:05:05 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#download Wordpress core files to the specified directory
wp core download --allow-root --path=/var/www/wordpress
wp core config --allow-root --path=/var/www/wordpress --dbname=wordpress --dbuser=root --dbpass=root --dbhost=mysql
wp core install --allow-root --path=/var/www/wordpress --url=localhost:8000 --title=inception --admin_user=admin --admin_password=admin --allow-root
exec "$@"