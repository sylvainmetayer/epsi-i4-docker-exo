#!/bin/sh

docker build -t php-codepostal .

docker run -it --rm -p 8080:80 -v /home/ocyhc/Documents/EPSI/epsi-docker-exo/:/var/www/html php-codepostal

docker build -t mysql-codepostal .
docker run --name mysql-cp  -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root mysql-codepostal

docker run -d --name php-cp ...
