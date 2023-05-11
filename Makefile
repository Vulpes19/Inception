# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/09 10:24:42 by abaioumy          #+#    #+#              #
#    Updated: 2023/05/11 11:53:44 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

WORDPRESS_DATA = srcs/data/wordpress
MARIADB_DATA = srcs/data/mariadb
DOCKER_COMPOSE_FILE = srcs/docker-compose.yml
WORDPRESS_CONTAINER = wordpress
MARIADB_CONTAINER = mariadb
NGINX_CONTAINER = nginx

all:
	mkdir -p $(WORDPRESS_DATA) $(MARIADB_DATA)
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d --build

clean:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

fclean: clean
	docker system prune -af
	rm -rf $(WORDPRESS_DATA)
	rm -rf $(MARIADB_DATA)
	docker-compose -f $(DOCKER_COMPOSE_FILE) down -v

wordpress:
	docker exec -it $(WORDPRESS_CONTAINER) bash

mariadb:
	docker exec -it $(MARIADB_CONTAINER) bash

nginx:
	docker exec -it $(NGINX_CONTAINER) bash

.PHONY: all clean fclean wordpress mariadb nginx