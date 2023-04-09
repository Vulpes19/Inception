FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install nginx -y

COPY default.conf /etc/nginx/conf.d/
COPY index.html /var/www/html
COPY nginx-selfsigned.crt /etc/ssl/certs/
COPY nginx-selfsigned.key /etc/ssl/private/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]