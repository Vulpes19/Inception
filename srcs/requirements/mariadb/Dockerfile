# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abaioumy <abaioumy@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/14 14:32:30 by abaioumy          #+#    #+#              #
#    Updated: 2023/05/14 14:13:25 by abaioumy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && apt-get  upgrade -y
RUN apt-get install mariadb-server -y

COPY conf/ /etc/mysql/
COPY /tools/create_db.sh /scripts/

RUN chmod +x /scripts/create_db.sh

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

ENTRYPOINT ["sh", "./scripts/create_db.sh"]

CMD ["mysqld"]
