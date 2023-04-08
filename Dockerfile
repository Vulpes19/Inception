FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install nginx -y

COPY index.html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]