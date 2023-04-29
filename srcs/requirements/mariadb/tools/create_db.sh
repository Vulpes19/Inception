# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_db.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:37:42 by abaioumy          #+#    #+#              #
#    Updated: 2023/04/29 13:30:10 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service mysql start
#creating database
echo "CREATE DATABASE WordPress;" >> data.sql 

echo "CREATE USER 'Ayman'@'%' IDENTIFIED BY 'Vulpes19';" >> data.sql
echo "GRANT ALL PRIVILEGES ON *.* TO 'Ayman'@'%' WITH GRANT OPTION;" >> data.sql

mysql < data.sql
