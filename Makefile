all:	build

build:
	docker-compose -f ./srcs/docker-compose.yml --env-file=./srcs/.env up -d --build 

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker system prune

fclean: stop clean
	docker system prune -a -f
	docker volume prune -f
