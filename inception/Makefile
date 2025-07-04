FILE = ./srcs/docker-compose.yml

all:
	mkdir -p /home/aakhrif/data/phpmyadmin
	mkdir -p /home/aakhrif/data/wordpress
	mkdir -p /home/aakhrif/data/mariadb
	docker compose -f $(FILE) up -d --build

up : all

stop:
	docker compose -f $(FILE) stop

start:
	docker compose -f $(FILE) start

down:
	docker compose -f $(FILE) down -v

clean: down
	docker rmi nginx:nginx
	docker rmi wordpress:wordpress
	docker rmi mariadb:mariadb

re: down up
