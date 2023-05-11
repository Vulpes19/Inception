# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_db.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:37:42 by abaioumy          #+#    #+#              #
#    Updated: 2023/05/11 14:13:29 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

service mysql start
echo "CREATE DATABASE wordpress;" >> data.sql 

echo "CREATE USER '$(MYSQL_USER)'@'%' IDENTIFIED BY '$(MYSQL_PASSWORD)';" >> data.sql
echo "GRANT ALL PRIVILEGES ON *.* TO '$(MYSQL_USER)'@'%' WITH GRANT OPTION;" >> data.sql

mysql < data.sql
