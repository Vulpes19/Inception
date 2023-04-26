# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    create_db.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:37:42 by abaioumy          #+#    #+#              #
#    Updated: 2023/04/26 13:17:17 by abaioumy         ###   ########.fr        #
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

#restructuring database
mysql -u root WordPress << EOF
DELIMITER $$
CREATE FUNCTION is_valid_username(username VARCHAR(20)) RETURNS BOOLEAN
BEGIN
    DECLARE is_valid BOOLEAN;
    IF ( username LIKE '%admin%' OR username LIKE '%Admin%' OR username LIKE '%administrator%' OR username LIKE '%Administrator' ) THEN
        SET is_valid = FALSE;
    else
        SET is_valid = TRUE;
    END IF;
    RETURN is_valid;
END $$
DELIMITER ;
EOF