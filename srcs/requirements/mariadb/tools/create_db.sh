# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_db.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:37:42 by abaioumy          #+#    #+#              #
#    Updated: 2023/05/14 13:32:39 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service mysql start
echo "CREATE DATABASE IF NOT EXISTS wordpress;" >> data.sql 
echo "CREATE USER 'ayman'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> data.sql
echo "GRANT ALL PRIVILEGES ON *.* TO 'ayman'@'%' WITH GRANT OPTION;" >> data.sql

mysql < data.sql

service mysql stop

exec "$@"
