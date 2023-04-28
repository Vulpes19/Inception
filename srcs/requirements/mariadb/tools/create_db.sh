# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_db.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:37:42 by abaioumy          #+#    #+#              #
#    Updated: 2023/04/28 13:43:48 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service mysql start
#creating database
mysql -u root -e "CREATE DATABASE WordPress;"

mysql -u root -e "CREATE USER 'Ayman'@'%' IDENTIFIED BY 'Vulpes19';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'Ayman'@'%' WITH GRANT OPTION;"

mysql -u root WordPress
service mysql stop
sleep 5
mysqld &
sleep 5
EOF