# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:32:39 by abaioumy          #+#    #+#              #
#    Updated: 2023/05/14 13:59:55 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install nginx -y

COPY conf/default.conf /etc/nginx/sites-available/default
COPY tools/index.html /var/www/html
COPY tools/nginx-selfsigned.crt /etc/ssl/certs/
COPY tools/nginx-selfsigned.key /etc/ssl/private/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]