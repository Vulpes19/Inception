# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_db.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:37:42 by abaioumy          #+#    #+#              #
#    Updated: 2023/04/26 14:51:13 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service mysql start
#creating database
mysql -u root -e "CREATE DATABASE WordPress;"

#creating user
mysql -u root -e "CREATE USER 'stranger'@'%' IDENTIFIED BY 'reallygoodpassword';"
mysql -u root -e "GRANT SELECT, INSERT, UPDATE, DELETE ON WordPress.* TO 'stranger'@'%';"

#creating admin user
mysql -u root -e "CREATE USER 'Ayman'@'%' IDENTIFIED BY 'Vulpes19';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'Ayman'@'%' WITH GRANT OPTION;"

mysql -u root WordPress << EOF
echo "Database created"
service mysql stop
mysqld