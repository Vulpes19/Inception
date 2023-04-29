# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/27 14:08:41 by abaioumy          #+#    #+#              #
#    Updated: 2023/04/29 14:14:01 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#download Wordpress core files to the specified directory
service php7.3-fpm start
wp core download --allow-root
wp core config --dbname=wordpress --dbuser=root --dbpass=root --dbhost=m --allow-root
wp core install --url=localhost:8000 --title=inception --admin_user=admin --admin_password=admin --allow-root
exec "$@"