# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_db.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:37:42 by abaioumy          #+#    #+#              #
#    Updated: 2023/04/30 18:05:37 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service mysql start
#creating database
echo "CREATE DATABASE wordpress;" >> data.sql 

echo "CREATE USER 'ayman'@'%' IDENTIFIED BY 'vulpes19';" >> data.sql
echo "GRANT ALL PRIVILEGES ON *.* TO 'ayman'@'%' WITH GRANT OPTION;" >> data.sql

mysql < data.sql
