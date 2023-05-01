# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 16:01:48 by abaioumy          #+#    #+#              #
#    Updated: 2023/05/01 13:53:59 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

#Installs php, php-fpm, php-mysql
RUN apt-get update && apt-get install -y php7.3 php7.3-fpm php7.3-mysql mariadb-client curl
#Downloads wordpress command line interface
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#Makes the file executable and move it in PATH to use it as the command wp
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /script.sh
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod +x script.sh
RUN mkdir /run/php

ENTRYPOINT ["sh", "script.sh"]
CMD ["php-fpm7.3", "-R","-F"]